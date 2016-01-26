(function ( $, window, document, undefined ) {
	'use strict';
	var pluginName = "weather";

	var defaults = {
		lang: 'en',
		city: null,
		tempUnit: 'C',
		autocompleteMinLength: 3,
		displayDescription: true,
		displayMinMaxTemp: true,
		displayWind: false,
		displayHumidity: false,
		fixLocation: false,
		url: 'http://api.openweathermap.org/data/2.5/forecast?appid=2de143494c0b295cca9337e1e96b00e0&cnt=1&units=metric'
	};

	function Plugin ( element, options ) {
		this.element = element;
		this.settings = $.extend( {}, defaults, options, this._loadStorage() );
		this._options = options;
		this._name = pluginName + $(this.element).index();
		this._icons = icons;
		this._init();
	}

	$.fn[ pluginName ] = function ( options ) {
		this.each(function() {
			if ( !$.data( this, "plugin_" + pluginName ) ) {
				$.data( this, "plugin_" + pluginName, new Plugin( this, options ) );
			}
		});
		return this;
	};

	var icons = {		
		'01d': 'sunny',		
		'01n': 'moon',		
		'02d': 'cloudy_day',		
		'02n': 'cloudy_night',		
		'03d': 'cloudy_day',		
		'03n': 'cloudy_night',		
		'04d': 'overcast',		
		'04n': 'overcast',		
		'09d': 'rain',		
		'09n': 'rain',		
		'10d': 'rain',		
		'10n': 'rain',		
		'11d': 'thunderstorm',		
		'11n': 'thunderstorm',		
		'13d': 'snowy',		
		'13n': 'snowy',		
		'50d': 'fog',		
		'50n': 'fog'		
	};

	$.extend(Plugin.prototype, {

		_init: function(){
			var promise = $.Deferred();
			this._initAdditional(this._getLocation(promise))
		},

		_initAdditional: function(promise) {
			promise
			.then(null, this._withoutGetLocation.bind(this))
			.then(this._getWeather.bind(this))
			.then(this._parseData.bind(this))
			.then(this._render.bind(this))
			.then(this._addMainEventListeners.bind(this))
			.fail(this._errorData.bind(this))
		},

		_getLocation: function(promise) {
			if (!this.settings.city) {
				if (navigator.geolocation) {
					navigator.geolocation.getCurrentPosition(pos =>	promise.resolve(pos.coords), e => promise.reject(e));
				} else {
					promise.reject(new Error('No support Geolocation'));
				}
				return promise;
			} else {
				return promise.resolve( {city: this.settings.city} );
			}
		},

		_withoutGetLocation: function(data) {
			var promise = $.Deferred();
			this._render();
			this._addSubEventListeners($(this.element), promise);
			this._autocomplete($(this.element).find('.weather__input'), {
				url: "http://gd.geobytes.com/AutoCompleteCity", 
				dataType: 'jsonp', 
				minChars: 3,
				request: 'q',
				type: 'GET',
				delay: 500
			});
			return promise.promise();
		},

		_getWeather: function(data) {
			var req = '';
			if (data) {
				if ('latitude' in data && 'longitude' in data) {
					req = `&lat=${data.latitude}&lon=${data.longitude}&lang=${this.settings.lang}`;
				} else 
				if ('city' in data) {
					req = `&q=${data.city}&lang=${this.settings.lang}`;	
				}	
			} else {
				req = `&q=Kharkiv&lang=${this.settings.lang}`;
			}
			return $.get(this.settings.url + req)
		},

		_parseData: function(data) {
			const KELVIN = 273.15;
			var subtrahend = this.settings.tempUnit === 'K' ? KELVIN : 0;
			if ('city' in data) {
				var obj = {
					name: data.city.name,
					country: data.city.country,
					main: data.list[0].weather[0].main,
					description: data.list[0].weather[0].description,
					icon: data.list[0].weather[0].icon,
					tempCur: (data.list[0].main.temp + subtrahend).toFixed(1),
					tempMin: (data.list[0].main.temp_min + subtrahend).toFixed(0),
					tempMax: (data.list[0].main.temp_max + subtrahend).toFixed(0),
					humidity: data.list[0].main.humidity,
					wind: data.list[0].wind
				};
				return obj;
			} else 
			return $.Deferred().reject('City not found');
		},

		_errorData: function(data) {
			console.log('Error:', data);
			this._initAdditional(this._withoutGetLocation.call(this))
		},

		_addMainEventListeners() {
			$(this.element).find('.weather__name-city').click(() => {
				this.settings.fixLocation = false;
				this._saveStorage({});
				this._initAdditional(this._withoutGetLocation.call(this));
			});
			$(this.element).find('.weather__checkbox').click(() => {
				this.settings.fixLocation = !this.settings.fixLocation; 
				this.settings.fixLocation ? this._saveStorage(this.settings) : this._saveStorage({});
				this._renderCheckBox(this.element)});
		},

		_addSubEventListeners (el, promise) {
			el.find('.weather__input').on('weatherSelect', e => {
				this.settings.city = $(e.target).val();
				promise.resolve({city: $(this.element).find('.weather__input').val()});
			});
		},

		_autocomplete: function(el, options) {
			var autocompleteState = {
				selectedIndex: 0,
				data: null,
				minChars: this.settings.autocompleteMinLength < 3 ? 3 : this.settings.autocompleteMinLength
			};
			const KEYS = {
				UP: 40,
				DOWN: 38,
				ENTER: 13
			}
			
			var cache = {};
			var timer;

			function autocompleteParseData(data) {
				autocompleteState.data = data.map(el => el ? el.replace(/(\w*)\,\s*\w*\,\s*(\w*)/g, '$1, $2') : '').filter(el => el ? 1: 0); 
				return autocompleteState;
			}

			function autocompleteAddCache(data) {
				cache[autocompleteState.ajaxSettings.data.q] = data.data;
				return data;
			}

			function autocompleteRender(state) {
				if (autocompleteState.data) {
					var html = '';
					$.each(autocompleteState.data, function (i, value) {
						html += `<div class="autocomplete-suggestion${autocompleteState.selectedIndex === i ? ' autocomplete-selected' : ''}" data-index="${i}">${value}</div>`;
					});
					$(el).parent().find('.autocomplete-suggestions')
					.css('display', html ? 'block' : 'none')
					.empty()
					.append(html)
					
				} else {
					$(el).parent().find('.autocomplete-suggestions')
					.children().removeClass('autocomplete-selected')
					.end().find(`[data-index="${state.selectedIndex}"]`).addClass('autocomplete-selected');
				}
			}

			function autocompleteAddEventListeners() {
				$(el).parent().find('.autocomplete-suggestions')
				.on('mousemove', '.autocomplete-suggestion', function(e) {
					autocompleteState.selectedIndex = $(e.target).data('index');
					autocompleteRender(null, autocompleteState.selectedIndex);
				})
				.on('click', '.autocomplete-suggestion', function(e) {
					el.val($(e.target).text());
					el.trigger('weatherSelect');
				});
			}

			function autocompleteError(jqXHR, textStatus, errorThrown) {
				console.log('error', textStatus, errorThrown);
			}

			function autocompleteGetCityList() {
				if (cache[autocompleteState.ajaxSettings.data.q]) {
					return $.Deferred().resolve(cache[autocompleteState.ajaxSettings.data.q])
				} else {
					return $.ajax(autocompleteState.ajaxSettings)
				}
			}

			el.on('keydown', function(e) {
				if (e.keyCode === KEYS.UP) {
					autocompleteState.selectedIndex < autocompleteState.data.length - 1 ? autocompleteState.selectedIndex++ : autocompleteState.selectedIndex = 0;
					autocompleteRender(null, autocompleteState.selectedIndex);
					return false;
				}
				if (e.keyCode === KEYS.DOWN) {
					autocompleteState.selectedIndex > 0 ? autocompleteState.selectedIndex-- : autocompleteState.selectedIndex = autocompleteState.data.length - 1;
					autocompleteRender(null, autocompleteState.selectedIndex);
					return false;
				}
			});

			el.on('keyup', function(e) {

				clearInterval(timer);

				if (e.keyCode === KEYS.ENTER) {
					var autocompleteText = el.parent().find('.autocomplete-selected').text();
					if (autocompleteText) el.val(autocompleteText);
					$(el).trigger('weatherSelect');
					return;
				}
				if (el.val().length < autocompleteState.minChars) {
					el.parent().find('.autocomplete-suggestions').css('display', 'none');
					return;
				}
				autocompleteState.ajaxSettings = $.extend({}, $.ajaxSettings, {
					url: options.url,
					data: {[options.request]: el.val()},
					type: options.type,
					dataType: options.dataType
				});

				timer = setTimeout(function() {
					autocompleteGetCityList()
					.then(autocompleteParseData)
					.then(autocompleteAddCache)
					.then(autocompleteRender)
					.then(autocompleteAddEventListeners)
					.fail(autocompleteError);
				}, options.delay);
			});
		},

		_saveStorage(settings) {
			localStorage.setItem(this._name, JSON.stringify(settings));
		},

		_loadStorage() {
			return JSON.parse(localStorage.getItem(pluginName + $(this.element).index()));
		},

		_renderCheckBox() {
			$(this.element).find('.weather__checkbox').attr('src', `img/dialog_checkbox${this.settings.fixLocation ? '_selected' : ''}.png`);
		},

		_render: function(obj) {
			if (obj) {
				var template = `<div class="weather__widget">
				<img class="weather__checkbox" title="Fix this city" src="img/dialog_checkbox${this.settings.fixLocation ? '_selected' : ''}.png">
				<span class="weather__name-city" title="Click to select another city">${obj.name}, ${obj.country}</span><br>
				<div class="weather__wrapper">
				<img class="weather__img" title="${obj.description}" src="img/${this._icons[obj.icon]}.png"><br>
				<div class="weather__text__wrapper">
				<span class="weather__main-temp">${obj.tempCur}&deg;${this.settings.tempUnit}</span><br>
				${this.settings.displayDescription ? `<span class="weather__description">${obj.description}</span><br>` : ''}
				${this.settings.displayMinMaxTemp ? `<span class="weather__info">min: ${obj.tempMin}&deg;${this.settings.tempUnit}</span>
				<span class="weather__info">max: ${obj.tempMax}&deg;${this.settings.tempUnit}</span><br>` : ''}
				${this.settings.displayWind ? `<span class="weather__info">Wind: ${obj.wind.speed}m/s</span><br>` : ''}
				${this.settings.displayHumidity ? `<span class="weather__info">Humidity: ${obj.humidity}%</span><br>` : ''}
				</div></div>
				</div>`;
				$(this.element).html($(template));
				$(this.element).find('.weather__widget')
				.css(`background`, `url("img/${obj.icon}.jpg")`)
				.css('background-size', '100%');
			}
			else {
				var template = `<div class="weather__sub">
				<label class="weather__input__label">Input city:</label>
				<input class="weather__input" type="text" autofocus>
				<div class="autocomplete-suggestions"></div>
				</div>`;	
				$(this.element).html($(template));
			}
		}
	});

})( jQuery, window, document );

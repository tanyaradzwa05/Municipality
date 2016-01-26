# weather-widget
weather widget on jquery

Ex.:
$('div').weather(options)

    options = {
        lang: 'en',               //language for response weather API, ex: en, ru, ua, etc. Default: en
        city: 'Kharkiv',          //city for weather forecast. If city !== null, will be ignore geolocation. Default: null
        tempUnit: 'C',            //temperature unit: C or K. Default: C
	displayDescription: true, //display information about weather forecast. Default: true
	displayMinMaxTemp: true,  //display information about minimal and maximal temperature. Default: true
        displayWind: false,       //display information about wind. Default: false
        displayHumidity: false,   //display information about humidity. Default: false
	fixLocation: false,	  //fixed location. Default: false
        autocompleteMinLength: 3, //minimal length of input city for request to server. Default: 3
        url: 'url'                //url of weather api server
    }

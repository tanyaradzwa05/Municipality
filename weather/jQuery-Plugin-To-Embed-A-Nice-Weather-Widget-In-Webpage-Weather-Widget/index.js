$(document).ready(function($) {
	
	$('.weather1').weather({
		city: null,
		autocompleteMinLength: 3
	});

	$('.weather2').weather({
		lang: 'en',
		city: 'Vryburg, ZA',
		tempUnit: 'C',
		displayDescription: true,
		displayMinMaxTemp: true,
		displayWind: true,
		displayHumidity: true
	});
	
});
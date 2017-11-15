export function fetchSearchGiphys(searchterm){
    return $.ajax({ 
	
		type:     "GET",
		url: 	  `http://api.giphy.com/v1/gifs/search?q=${searchterm}&api_key=dc6zaTOxFJmzC&limit=2`,
	
    });
}
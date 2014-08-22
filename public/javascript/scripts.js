
window.onload=function(){
	var inputElement = document.getElementById('copy-field');

	inputElement.addEventListener('focus', function(){
		setTimeout (function() {
			inputElement.select();
		}, 0)
	});

	// main.js
	var client = new ZeroClipboard( document.getElementById("copy-button") );

	client.on( "ready", function( readyEvent ) {
	  // alert( "ZeroClipboard SWF is ready!" );

	  client.on( "aftercopy", function( event ) {
	    // `this` === `client`
	    // `event.target` === the element that was clicked
	    event.target.style.display = "none";
	    alert("Copied text to clipboard: " + event.data["text/plain"] );
	  } );
	} );
};




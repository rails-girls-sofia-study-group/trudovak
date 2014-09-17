window.onload=function(){
	// var inputElement = document.getElementById('copy-field');

	// inputElement.addEventListener('focus', function(){
	// 	setTimeout (function() {
	// 		inputElement.select();
	// 	}, 0)
	// });

	// // main.js
	// var client = new ZeroClipboard( document.getElementById("copy-button") );

	// client.on( "ready", function( readyEvent ) {
	//   // alert( "ZeroClipboard SWF is ready!" );

	//   client.on( "aftercopy", function( event ) {
	//     // `this` === `client`
	//     // `event.target` === the element that was clicked
	//     // event.target.style.display = "none";
	//     alert("Copied text to clipboard: " + event.data["text/plain"] );
	//   } );
	// } );
	resizeFont();
};

function resizeFont(){
	var tabelkaVisochina = document.getElementById('tabelka-wrapper').clientHeight;
	var textVisochina = document.getElementById('tabelka-text').clientHeight;
	var ratio = textVisochina/tabelkaVisochina;
	var fontSizeTbl =  parseInt(window.getComputedStyle(document.getElementById("tabelka-text")).fontSize);

	if (ratio < 1) {
		console.log("tabelkaVisochina:" + tabelkaVisochina + "    text: "+ textVisochina);
		return ;
	}
	
	document.getElementById("tabelka-text").style.fontSize = fontSizeTbl - 10 +"px";
	resizeFont();

} 


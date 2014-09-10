
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
	console.log("tabela " + tabelkaVisochina);
	var textVisochina = document.getElementById('tabelka-text').clientHeight;
	console.log("text " + textVisochina);
	var ratio = textVisochina/tabelkaVisochina;
	console.log(ratio);
	if(ratio>1) {
		var fontSizeTbl = window.getComputedStyle(document.getElementById("tabelka-text")).fontSize;
		fontSizeTbl = parseInt(fontSizeTbl);
		fontSizeTbl = fontSizeTbl/ratio;
		console.log(fontSizeTbl);
		document.getElementById("tabelka-text").style.fontSize = fontSizeTbl+"px";
		//Да намерим текущия размер на фонта от css
		//Да го разделим на съотношението ratio
		//Да дадем на текста новият размер
	} 
}




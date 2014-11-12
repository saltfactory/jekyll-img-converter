/**
*
* This ImgConverter support to convert IMG tag from Markdown for the Github Pages
*
* author : SungKwang Song <saltfactory@gmail.com>
* repository: https://github.com/saltfactory/jekyll-img-conveter
* license : MIT
*
*/

var ImgConverter = function(){
	this.imgs = document.getElementsByTagName('img');
};

ImgConverter.prototype.convert = function(style){
	
	for (var i=0; i< this.imgs.length; i++){
		var img = this.imgs[i];
		
		var pattern = /({)(.+)(})/g;	
		
		if(style) {
			var match = pattern.exec(style);
			
			var inlineStyle = match[2];
			console.log(inlineStyle)
			img.setAttribute("style", inlineStyle);
		} else {
			var alt = img.alt;

			var match = pattern.exec(alt);
			
			if(match){
				var inlineStyle = match[2];
				alt = alt.replace(pattern,"").replace(/\s+$/, "");		
				img.setAttribute("alt", alt);
				img.setAttribute("style", inlineStyle);
			}			
		}				
	}	
};

var imgConverter = new ImgConverter();
imgConverter.convert();
// imgConverter.convert("{max-width:200px;}"); // You can set a inline style to all IMG elements in document;
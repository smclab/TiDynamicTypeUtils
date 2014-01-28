
var dynamictype;

try {
	// We use a try/catch to support, for example, Android
	dynamictype = require('it.smc.dynamictypeutils')
}
catch (e) {}

function getFontSize(type, def) {
	if (!dynamictype) return def;
	else return dynamictype.getFontSize(type) || def;
}

setup();

function setup() {

	var window = Ti.UI.createWindow({
		background: 'white'
	});

	window.addEventListener('close', setup);

	var label = Ti.UI.createLabel({
		text: 'Hallo, my fellow developer',
		font: {
			fontSize: getFontSize(Ti.UI.TEXT_STYLE_SUBHEADLINE)
		}
	});

}

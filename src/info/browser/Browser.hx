package info.browser;

/**
 * ...
 * @author P.J.Shand
 */
@:enum abstract Browser(String) from String to String {
	
	var CHROME = "chrome";
	var FIREFOX = "firefox";
	var SAFARI = "safari";
	var OPERA = "Opera";
	var EDGE = "edge";
	var IE = "ie";
	var OTHER = "other";
}
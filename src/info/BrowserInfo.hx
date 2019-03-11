package info;

/**
 * ...
 * @author P.J.Shand
 */
class BrowserInfo
{
	public var browser(get, null):Browser;

	function get_browser():Browser
	{
		throw "needs to be implemented";
	}
}

@:enum abstract Browser(String) from String to String {
	
	var CHROME = "chrome";
	var FIREFOX = "firefox";
	var SAFARI = "safari";
	var OPERA = "Opera";
	var EDGE = "edge";
	var IE = "ie";
	var OTHER = "other";
}
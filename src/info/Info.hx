package info;

import info.app.App;
import info.device.DeviceInfo;
import info.browser.Browser;
import info.browser.BrowserInfo;
import info.os.OSInfo;
import info.os.OS;
import info.screen.ScreenInfo;
import info.screen.Orientation;

/**
 * ...
 * @author P.J.Shand
 */
class Info {
	public static var appId(get, null):String;
	public static var appFilename(get, null):String;
	public static var appVersion(get, null):String;
	public static var appDir(get, null):String;
	public static var browser(get, null):Browser;
	public static var isMobile(get, null):Null<Bool>;
	public static var os(get, null):OS;
	public static var highDPI(get, null):Bool;
	public static var dpi(get, null):Null<Float>;
	public static var size(get, null):{width:Int, height:Int};
	public static var orientation(get, null):Orientation;
	public static var width(get, null):Int;
	public static var height(get, null):Int;

	inline static function get_appId():String {
		return App.appId;
	}

	inline static function get_appFilename():String {
		return App.appFilename;
	}

	inline static function get_appVersion():String {
		return App.appVersion;
	}

	inline static function get_appDir():String {
		return App.appDir;
	}

	inline static function get_browser():Browser {
		return BrowserInfo.browser;
	}

	static function get_isMobile():Null<Bool> {
		return DeviceInfo.isMobile;
	}

	static function get_os():OS {
		return OSInfo.os;
	}

	static function get_highDPI():Bool {
		return ScreenInfo.highDPI;
	}

	static function get_dpi():Null<Float> {
		return ScreenInfo.dpi;
	}

	static function get_size():{width:Int, height:Int} {
		return ScreenInfo.size;
	}

	static function get_orientation():Orientation {
		return ScreenInfo.orientation;
	}

	inline static function get_width():Int {
		return App.width;
	}

	inline static function get_height():Int {
		return App.height;
	}
}

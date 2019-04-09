package info;

import info.device.DeviceInfo;
import info.browser.Browser;
import info.browser.BrowserInfo;
import info.os.OSInfo;
import info.os.OS;
import info.screen.ScreenInfo;
import info.screen.Orientation;
import geom.Size;

/**
 * ...
 * @author P.J.Shand
 */
class Info
{
	public static var browser(get, null):Browser;
	inline static function get_browser():Browser
	{
		return BrowserInfo.browser;
	}

	public static var isMobile(get, null):Null<Bool>;
	static function get_isMobile():Null<Bool>
	{
		return DeviceInfo.isMobile;
	}

	public static var os(get, null):OS;
	static function get_os():OS
	{
		return OSInfo.os;
	}

	public static var highDPI(get, null):Bool;
	static function get_highDPI():Bool
	{
		return ScreenInfo.highDPI;
	}

	public static var dpi(get, null):Null<Float>;
	static function get_dpi():Null<Float>
	{
		return ScreenInfo.dpi;
	}

	public static var size(get, null):Size;
	static function get_size():Size
	{
		return ScreenInfo.size;
	}

	public static var orientation(get, null):Orientation;
	static function get_orientation():Orientation
	{
		return ScreenInfo.orientation;
	}

}
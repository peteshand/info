package info.device;

import info.Info;
import info.os.OS;

/**
 * ...
 * @author P.J.Shand
 */
class DeviceInfo
{
	public static function __init__()
	{
		if (Info.os == OS.IOS || Info.os == OS.ANDROID) _isMobile = true;
		else if (Info.os == OS.WINDOWS || Info.os == OS.MAC || Info.os == OS.LINUX) _isMobile = false;
		else _isMobile = null;
	}

	static var _isMobile:Null<Bool>;
	public static var isMobile(get, null):Null<Bool>;

	static function get_isMobile():Null<Bool>
	{
		return _isMobile;
	}
}
package info.os;

/**
 * ...
 * @author P.J.Shand
 */
class OSInfo
{
	public static var os(get, null):OS;

	static function get_os():OS
	{
		#if ios
		return OS.IOS;
		#elseif android
		return OS.ANDROID;
		#elseif mac
		return OS.MAC;
		#elseif linux
		return OS.LINUX;
		#elseif windows
		return OS.WINDOWS;
		#else
			#if html5
				return HTMLOSInfo.os;
			#end
			return OS.UNKNOWN;
		#end
	}
}

#if html5
class HTMLOSInfo
{
	public static function __init__()
	{
		var regularExpression = [
			~/Windows/			=>	OS.WINDOWS,
			~/Mac/				=>	OS.MAC,
			~/Android/			=>	OS.ANDROID,
			~/Linux/			=>	OS.LINUX,
			~/iPad|iPhone|iPod/	=>	OS.IOS
		];

		var userAgent = js.Browser.navigator.userAgent;
		trace("userAgent = " + userAgent);
		for (reg in regularExpression.keys()){
			if (reg.match(userAgent)){
				if (_os == null) {
					_os = regularExpression.get(reg);
					trace("_os = " + _os);
				}
				
			}
		}
		if (_os == null) _os = OS.UNKNOWN;
	}
	
	static var _os:OS;
	public static var os(get, null):OS;

	static function get_os():OS
	{
		return _os;
	}
}
#end
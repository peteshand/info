package info;

/**
 * ...
 * @author P.J.Shand
 */
class OSInfo
{
	public var os(get, null):OS;

	function get_os():OS
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
		return OS.UNKNOWN;
		#end
		// need to test
	}
}

@:enum abstract OS(String) from String to String {
	
	var ANDROID = "android";
	var WINDOWS = "windows";
	var MAC = "mac";
	var IOS = "ios";
	var LINUX = "linux";
	var UNKNOWN = "unknown";
}
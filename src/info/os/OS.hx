package info.os;

/**
 * ...
 * @author P.J.Shand
 */
@:enum abstract OS(String) from String to String {
	
	var WINDOWS = "windows";
	var MAC = "mac";
	var LINUX = "linux";
	var IOS = "ios";
	var ANDROID = "android";
	var UNKNOWN = "unknown";
}
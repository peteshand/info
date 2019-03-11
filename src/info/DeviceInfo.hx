package info;

/**
 * ...
 * @author P.J.Shand
 */
class DeviceInfo
{
	public var device(get, null):Device;

	function get_device():Device
	{
		throw "needs to be implemented";
	}
}

@:enum abstract Device(String) from String to String {
	
	var PC = "pc";
	var PHONE = "phone";
	var TABLE = "table";
}
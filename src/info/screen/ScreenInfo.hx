package info.screen;

#if lime
import lime.system.System;
#end
#if html5
import js.Browser;
import js.html.DivElement;
#end

/**
 * ...
 * @author P.J.Shand
 */
class ScreenInfo {
	public static var highDPI(get, null):Bool;
	public static var dpi(get, null):Null<Float>;
	public static var size(get, null):{width:Int, height:Int};
	public static var orientation(get, null):Orientation;
	public static var _dpi:Null<Float>;

	static function get_highDPI():Bool {
		#if html5
		if (Browser.window.devicePixelRatio >= 2)
			return true;
		else
			return false;
		#end
		throw "needs to be implemented";
		return false;
	}

	static function get_dpi():Float {
		#if lime
		return System.getDisplay(0).dpi;
		#elseif html5
		if (_dpi == null) {
			var dpiDiv = Browser.window.document.createDivElement();
			dpiDiv.id = 'dpi';
			dpiDiv.style.height = '1in';
			dpiDiv.style.left = '-100%';
			dpiDiv.style.position = 'absolute';
			dpiDiv.style.top = '-100%';
			dpiDiv.style.width = '1in';

			Browser.window.document.body.appendChild(dpiDiv);
			_dpi = dpiDiv.offsetHeight * Browser.window.devicePixelRatio;
			Browser.window.document.body.removeChild(dpiDiv);
		}
		return _dpi;
		#end
		throw "needs to be implemented";
	}

	static function get_size():{width:Int, height:Int} {
		#if html5
		return {
			width: Browser.window.screen.width,
			height: Browser.window.screen.height
		}
		#end
		throw "needs to be implemented";
		return null;
	}

	static function get_orientation():Orientation {
		if (size == null) {
			throw "needs to be implemented";
			return null;
		} else {
			if (size.width > size.height)
				return Orientation.LANDSCAPE;
			else
				return Orientation.PORTRAIT;
		}
	}
}

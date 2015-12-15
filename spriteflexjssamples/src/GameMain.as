package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	/**
	 * ...
	 * @author lizhi
	 */
	public class GameMain extends Sprite
	{
		private var loader:Loader;
		
		public function GameMain() 
		{
			loader = new Loader;
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loader_complete);
			loader.load(new URLRequest("../../wood.jpg"));
		}
		
		private function loader_complete(e:Event):void 
		{
			var bmd:BitmapData = (loader.content as Bitmap).bitmapData;
			var image:Image = new Image(Texture.fromBitmapData(bmd));
			addChild(image);
		}
		
	}

}
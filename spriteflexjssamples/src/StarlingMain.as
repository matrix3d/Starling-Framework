package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import starling.core.Starling;
	
	/**
	 * ...
	 * @author lizhi
	 */
	public class StarlingMain extends Sprite 
	{
		
		public function StarlingMain() 
		{
			var starling:Starling = new Starling(GameMain, stage);
			starling.start();
		}
		
	}
	
}
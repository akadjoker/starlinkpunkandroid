package
{
	import com.djoker.SP;
	import com.djoker.Engine;


	public class GameEngine extends Engine
	{	
		public function GameEngine() 
		{
			super();
		}
		
		override public function init():void 
		{
			super.init();
		    SP.world = new PlayWorld();

		}
	}
}
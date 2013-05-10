package 
{
	
   // import flash.desktop.NativeApplication;
    import flash.display.Bitmap;
    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageQuality;
    import flash.display.StageScaleMode;
    import flash.events.Event;
    import flash.geom.Rectangle;
    import flash.system.Capabilities;
    
	
    import flash.geom.Rectangle;

	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import starling.core.Starling;

		
	[SWF( width="800", height="600", backgroundColor="#CCCCCC", frameRate="60" )]
	
	public class Main extends Sprite 
	{
		  private var mStarling:Starling;
        
        public function Main()
        {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
            
            Starling.multitouchEnabled = true; // useful on mobile devices
            Starling.handleLostContext = true; // deactivate on mobile devices (to save memory)
            
            mStarling = new Starling(GameEngine, stage);
            mStarling.simulateMultitouch = true;
            mStarling.enableErrorChecking = false;
			mStarling.showStats = true;
            mStarling.start();
			
            
            // this event is dispatched when stage3D is set up
            mStarling.stage3D.addEventListener(Event.CONTEXT3D_CREATE, onContextCreated);
        }
        
        private function onContextCreated(event:Event):void
        {
            
            
            if (Starling.context.driverInfo.toLowerCase().indexOf("software") != -1)
			{
                Starling.current.nativeStage.frameRate = 30;
				trace("set framerate to 30 in software mode");
			} else
			{
				Starling.current.nativeStage.frameRate = 60;
				trace("set framerate to 60 in hal mode");
			}
			
			
        }
    }
}
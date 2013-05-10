package  
{
	import com.djoker.SP;
	import com.djoker.World;
	import com.djoker.utils.Key;

	import starling.display.Sprite;
    import starling.core.Starling;
    import starling.display.MovieClip;


	import starling.events.Event;
	import starling.textures.Texture;
	
    import starling.textures.TextureAtlas;
	
	import com.grandroot.controls.joystick.Joystick;
	import com.grandroot.controls.joystick.JoystickAlign;
	import com.grandroot.controls.joystick.JoystickState;

	
	import flash.display.BitmapData;
	import flash.utils.Timer;
	import flash.geom.Rectangle;
	 import flash.geom.Point;
    import flash.utils.Dictionary;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
    
    import com.djoker.Sfx;
	

	

	public class PlayWorld extends World 
	{

     private var joystick:Joystick;
      private var hero:MovieClip;
		
	  


 


		
		public function PlayWorld() 
		{
		super();
		addEventListener(Event.ADDED_TO_STAGE, onAdded);
			
		}
		
      private function onAdded ( e:Event ):void
		{
            hero = new MovieClip(Assets.getAtlas().getTextures("flight_"),10);
			hero.x = 100;
			hero.y = 100;
			hero.scaleX = 0.5;
			hero.scaleY=  0.5;
            addChild(hero);
            hero.play();
            Starling.juggler.add(hero);
			
			joystick = new Joystick(Assets.getTexture("joystickbg"), Assets.getTexture("knob"));
            addChild(joystick);


			
		}

		
		
		override public function update():void 
		{
		super.update();
		
	
		if (hero.x <= 0) hero.x = 0;
		if (hero.y <= 0) hero.y = 0;
		if (hero.x >= SP.width-hero.width) hero.x = SP.width-hero.width;
		if (hero.y >= SP.height-hero.height) hero.y = SP.height-hero.height;
		
		
		
		  hero.x += joystick.offset.x * 5;
           hero.y += joystick.offset.y * 5;
/*
		 switch (joystick.state)
            {
                case JoystickState.LEFT:
                {
                    hero.x -= 2;
                    break;
                }
                case JoystickState.RIGHT:
                {
                    hero.x += 2;
                    break;
                }
                case JoystickState.UP:
                {
                    hero.y -= 2;
                    break;
                }
                case JoystickState.DOWN:
                {
                    hero.y += 2;
                    break;
                }
                case JoystickState.UP_RIGHT:
                {
                    hero.x += 2;
                    hero.y -= 2;
                    break;
                }
                case JoystickState.DOWN_RIGHT:
                {
                    hero.x += 2;
                    hero.y += 2;
                    break;
                }
                case JoystickState.DOWN_LEFT:
                {
                    hero.x -= 2;
                    hero.y += 2;
                    break;
                }
                case JoystickState.UP_LEFT:
                {
                    hero.x -= 2;
                    hero.y -= 2;
                    break;
                }
            }
		*/	
		}
		
		
	
	}
}
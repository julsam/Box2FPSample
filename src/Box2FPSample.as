package
{
	import net.box2fp.Box2DWorld;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.debug.Console;
	
	public class Box2FPSample extends Engine
	{
		public function Box2FPSample()
		{
			super(640, 480, Box2DWorld.DEFAULT_FRAMERATE, true);
		}
		
		override public function init():void
		{
			FP.console.enable();
			FP.world = new MyWorld;
		}
	}
}
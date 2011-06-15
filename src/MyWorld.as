package
{
	import Box2D.Common.Math.b2Vec2;
	
	import net.box2fp.Box2DWorld;
	
	public class MyWorld extends Box2DWorld
	{
		public function MyWorld()
		{
			super();
			setGravity(new b2Vec2(0, 10));
			doDebug();
		}
		
		override public function get scale():Number
		{
			return 25;
		}
		
		override public function begin():void
		{
			add(new MyWall(0, 400, 640, 80));
		}
		
		override public function update():void
		{
			super.update();
			if (Math.random() > 0.95)
				add(new MyEntity(Math.random() * 600 + 20, Math.random() * 200));
		}
		
		
	}
}
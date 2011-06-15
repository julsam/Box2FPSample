package
{
	import Box2D.Common.Math.b2Vec2;
	import Box2D.Dynamics.b2Body;
	
	import net.box2fp.Box2DEntity;
	import net.box2fp.Box2DShapeBuilder;
	import net.box2fp.graphics.SuperGraphiclist;
	import net.flashpunk.graphics.Image;
	
	public class MyEntity extends Box2DEntity
	{
		[Embed(source='../img/sprite.png')]
		public static const SPRITE:Class;
		
		public function MyEntity(x:Number, y:Number)
		{
			super(x, y, 30, 30, b2Body.b2_dynamicBody);
			var i:Image = new Image(SPRITE);
			i.centerOrigin();
			(graphic as SuperGraphiclist).add(i);
		}
		
		override public function buildShapes(friction:Number, density:Number, 
			restitution:Number, group:int, category:int, collmask:int):void
		{
			Box2DShapeBuilder.buildCircle(body, width / (2.0 * box2dworld.scale), 0.3, 1, 0.3);
		}
		
		override public function added():void
		{
			super.added();
			body.SetAngularVelocity(Math.random() * 4 - 2);
			body.SetLinearVelocity(new b2Vec2(Math.random() * 5 - 2.5, -Math.random() * 3));
		}
	}
}
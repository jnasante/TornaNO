package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Main extends Sprite 
	{
		[Embed(source="../assests/11949863251401131855candy_31.svg.med.png")]
		private var layer0Class:Class;
		var layer0:Bitmap = new layer0Class() as Bitmap;
		
		[Embed(source="../assests/11971038831932190305kelan_whistle.svg.med.png")]
		private var layer1Class:Class;
		var layer1:Bitmap = new layer1Class()as Bitmap;

		[Embed(source="../assests/basketball.png")]
		private var layer2Class:Class;
		var layer2:Bitmap = new layer2Class()as Bitmap;

		[Embed(source="../assests/bike.png")]
		private var layer3Class:Class;
		var layer3:Bitmap = new layer3Class() as Bitmap;

		
		private var layers:Array = new Array(
			new layer0Class(),
			new layer1Class(),
			new layer2Class(),
			new layer3Class()
		);
		
		private var startPositionsX:Array = new Array(0, 0, -160, -320);
		private var startPositionsY:Array = new Array(0, 10, 20, 30);
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
	
			for (var i:int = 0; i < layers.length; i++ )
			{
				addChild(layers[i]);
				layers[i].x = startPositionsX[i];
				layers[i].y = startPositionsY[i];
			}
			
			stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseMove);
		}
		
		private function mouseMove(e:MouseEvent):void
		{
			var moveX:int = e.localX - 160;
			var moveY:int = e.localY - 100;
			
			for (var i:int = 0; i < layers.length; i++)
			{
				layers[i].x = startPositionsX[i] - (i * moveX) / 10;
				layers[i].y = startPositionsY[i] - (i * moveY) / 10;
			}
		}
		
	}
}
package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	
	public class Main extends Sprite 
	{
		
		[Embed(source="../assets/11949863251401131855candy_31.svg.med.png")]
		private var layer0Class:Class;
		var layer0:Bitmap = new layer0Class() as Bitmap;
		
		
		[Embed(source="../assets/11971038831932190305kelan_whistle.svg.med.png")]
		private var layer1Class:Class;
		var layer1:Bitmap = new layer1Class()as Bitmap;

		[Embed(source="../assets/basketball.png")]
		private var layer2Class:Class;
		var layer2:Bitmap = new layer2Class()as Bitmap;

		[Embed(source="../assets/bike.png")]
		private var layer3Class:Class;
		var layer3:Bitmap = new layer3Class() as Bitmap;
		
		[Embed(source="../assets/canned-goods-md.png")]
		private var layer4Class:Class;
		var layer4:Bitmap = new layer4Class() as Bitmap;
		
		[Embed(source="../assets/car.png")]
		private var layer5Class:Class;
		var layer5:Bitmap = new layer5Class() as Bitmap;
		
		[Embed(source="../assets/fireworks.png")]
		private var layer6Class:Class;
		var layer6:Bitmap = new layer6Class() as Bitmap;
		
		[Embed(source="../assets/flashlight.png")]
		private var layer7Class:Class;
		var layer7:Bitmap = new layer7Class() as Bitmap;
		
		[Embed(source="../assets/gobag.png")]
		private var layer8Class:Class;
		var layer8:Bitmap = new layer8Class() as Bitmap;
		
		[Embed(source="../assets/radio.png")]
		private var layer9Class:Class;
		var layer9:Bitmap = new layer9Class() as Bitmap;
		
		[Embed(source="../assets/tv.png")]
		private var layer10Class:Class;
		var layer10:Bitmap = new layer10Class() as Bitmap;
		
		[Embed(source="../assets/waterbottle.png")]
		private var layer11Class:Class;
		var layer11:Bitmap = new layer11Class() as Bitmap;
		
		[Embed(source="../assets/wrench.png")]
		private var layer12Class:Class;
		var layer12:Bitmap = new layer12Class() as Bitmap;

		
		private var layers:Array = new Array(
			new layer0Class(),
			new layer1Class(),
			new layer2Class(),
			new layer3Class(),
			new layer4Class(),
			new layer5Class(),
			new layer6Class(),
			new layer7Class(),
			new layer8Class(),
			new layer9Class(),
			new layer10Class(),
			new layer11Class(),
			new layer12Class()
		);
		
		private var startPositionsX:Array = new Array(0, 100, 200, 300,400,500,600,700,800,900,1000,1100);
		private var startPositionsY:Array = new Array(0, 100, 200, 300,400,500,600,700,800,900,1000,1100);
		
		var xPos:int; 
		var yPos:int; 
		
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
			
			layer0.addEventListener(MouseEvent.MOUSE_DOWN, dragObject);
			layer0.addEventListener(MouseEvent.MOUSE_UP, stopDragObject);
			
			[SWF(width="1280", height="1000", backgroundColor="#000000", frameRate="30")]
		}
		
		private function dragObject(e:MouseEvent):void
		{
			trace(e.currentTarget);
			this.startDrag();
		}
		
		private function stopDragObject(e:MouseEvent):void
		{
			
			this.stopDrag();	
			
		}
		
		private function getPosition(target:Object):void
		{
			xPos = target.x;
			yPos = target.y;
		}
		
	}
}
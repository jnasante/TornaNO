package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import components.*;
	
	
	public class Main extends Sprite 
	{
		
		[Embed(source="../assets/11949863251401131855candy_31.svg.med.png")]
		private var layer0Class:Class;
		var layer0:Bitmap = new layer0Class() as Bitmap;
		var item0 = new GoBagItem("candy","lollipop",true,layer0);
		
		
		[Embed(source="../assets/11971038831932190305kelan_whistle.svg.med.png")]
		private var layer1Class:Class;
		var layer1:Bitmap = new layer1Class() as Bitmap;
		var item1 = new GoBagItem("candy","lollipop",true,layer1);

		[Embed(source="../assets/basketball.png")]
		private var layer2Class:Class;
		var layer2:Bitmap = new layer2Class() as Bitmap;
		var item2 = new GoBagItem("candy","lollipop",true,layer2);

		[Embed(source="../assets/bike.png")]
		private var layer3Class:Class;
		var layer3:Bitmap = new layer3Class() as Bitmap;
		var item3 = new GoBagItem("candy","lollipop",true,layer3);
		
		
		[Embed(source="../assets/canned-goods-md.png")]
		private var layer4Class:Class;
		var layer4:Bitmap = new layer4Class() as Bitmap;
		var item4 = new GoBagItem("candy","lollipop",true,layer4);
		
		[Embed(source="../assets/car.png")]
		private var layer5Class:Class;
		var layer5:Bitmap = new layer5Class() as Bitmap;
		var item5 = new GoBagItem("candy","lollipop",true,layer5);
		
		[Embed(source="../assets/fireworks.png")]
		private var layer6Class:Class;
		var layer6:Bitmap = new layer6Class() as Bitmap;
		var item6 = new GoBagItem("candy","lollipop",true,layer6);
		
		[Embed(source="../assets/flashlight.png")]
		private var layer7Class:Class;
		var layer7:Bitmap = new layer7Class() as Bitmap;
		var item7 = new GoBagItem("candy","lollipop",true,layer7);
		
		[Embed(source="../assets/gobag.png")]
		private var layer8Class:Class;
		var layer8:Bitmap = new layer8Class() as Bitmap;
		var item8 = new GoBagItem("candy","lollipop",true,layer8);
		
		[Embed(source="../assets/radio.png")]
		private var layer9Class:Class;
		var layer9:Bitmap = new layer9Class() as Bitmap;
		var item9 = new GoBagItem("candy","lollipop",true,layer9);
		
		[Embed(source="../assets/tv.png")]
		private var layer10Class:Class;
		var layer10:Bitmap = new layer10Class() as Bitmap;
		var item10 = new GoBagItem("candy","lollipop",true,layer10);
		
		[Embed(source="../assets/waterbottle.png")]
		private var layer11Class:Class;
		var layer11:Bitmap = new layer11Class() as Bitmap;
		var item11 = new GoBagItem("candy","lollipop",true,layer11);
		
		[Embed(source="../assets/wrench.png")]
		private var layer12Class:Class;
		var layer12:Bitmap = new layer12Class() as Bitmap;
		var item12 = new GoBagItem("candy","lollipop",true,layer0);

		
		private var items:Array = new Array(
			item0,
			item1,
			item2,
			item3,
			item4,
			item5,
			item6,
			item7,
			item8,
			item9,
			item10,
			item11,
			item12
		);
		
		private var startPositionsX:Array = new Array(0, 50, 100, 150,200,250,300,350,400,450,500,550);
		private var startPositionsY:Array = new Array(0, 50, 100, 150,200,250,300,350,400,450,500,550);
		
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
			
			
			for (var i:int = 1; i < items.length; i++ )
			{
				addChild(items[i]);
				items[i].x = startPositionsX[i];
				items[i].y = startPositionsY[i];
				items[i].height = 75;
				items[i].scaleX = items[i].scaleY;
				items[i].addEventListener(MouseEvent.MOUSE_DOWN, dragObject);
				items[i].addEventListener(MouseEvent.MOUSE_UP, stopDragObject);
			}
			
			
			
			[SWF(width="1280", height="1000", backgroundColor="#000000", frameRate="30")]
		}
		
		private function dragObject(e:MouseEvent):void
		{
			trace(e.currentTarget);
			e.currentTarget.parent.addChild(e.currentTarget);
			e.currentTarget.startDrag();
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
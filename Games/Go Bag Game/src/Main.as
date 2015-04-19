package 
{
	import flash.display.Bitmap;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.Graphics;
	import components.*;
	import flash.text.TextField;
	
	
	public class Main extends Sprite 
	{
		var itemName = "candy";
		var description = "Candy is a yummy treat, but it is not good for nutrition or sustained energy in a crisis.";
		itemName = "whistle";
		description = "Whistles produce a loud noise so that people can find you, even if you are trapped under rubble.";
		itemName = "canned food";
		description = "Canned food lasts for a long time and can be opened with a multitool.";
		itemName = "bike";
		description = "A bike is a means of transportation. However, it can only be used by one person and it may not be practical after a tornado.";
		itemName = "fireworks";
		description = "Fireworks are explosive and may start dangerous fires.";
		itemName = "basketball";
		description = "Basketballs are a source of outdoors entertainment.";
		itemName = "flashlight";
		description = "Flashlights illuminate dark areas, helping you find people and things.";
		itemName = "radio";
		description = "A battery-powered radio lets you listen to emergency broadcasts and weather reports even when the power is out.";
		itemName = "waterbottle";
		description = "Waterbottles are a source of clean, drinkable water to help you stay hydrated.";
		itemName = "wrench";
		description = "A wrench can be used to turn off the utilities of a house during a tornado.";
		itemName = "game system";
		description = "Game systems are a source of entertainment, but require batteries that might be used for radios and flashlights.";
		itemName = "doll";
		description = "A small toy figurine.";
		itemName = "cash";
		description = "Cash can be used to buy supplies or necessary items.";
		itemName = "map";
		description = "Maps of the local area help you find your way.";
		itemName = "first aid kit";
		description = "First Aid Kits contain supplies to help handle injuries, like cuts.";
		itemName = "multitool";
		description = "A multitool can be used as a knife, a can opener, scissors, and more.";
		itemName = "teddy bear";
		description = "A soft toy bear.";
		itemName = "mp3 player";
		description = "MP3 players allow you to listen to music.";
		itemName = "boots";
		description = "Boots are sturdy footwear that protect your feet from sharp objects on the ground.";
		itemName = "hard hat";
		description = "A hard hat protects your head from debris.";
		
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
			
			
			var text:TextField = new TextField();
			text.text = "GOO BAGGGGGG GAME";
			text.border = true;
			text.wordWrap = true;
			text.width = 300;
			text.height = 1000;
			text.x = 1000;
			text.y = 0;
			addChild(text);
			
			//[SWF(width="1280", height="1000", backgroundColor="#66000", frameRate="30")]
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
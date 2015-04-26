package components{
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class GoBag extends Sprite{

		public var itemsArray:Array;
		public var itemName:String;
		public var isAccepted;
		public var description:String;
		public var imageSprite:Sprite;
		
		public function GoBag(imageMap:Bitmap, acceptance:Boolean) {
			trace("go bag connected");
			itemsArray = new Array();
			isAccepted = acceptance;
			itemName = "Go Bag";
			
			imageSprite = new Sprite();
			addChild(imageSprite);
			imageSprite.addChild(imageMap);
		}
		
		public function addToBag(item:GoBagItem):void{
			
			trace("you dropped something on the bag!")
			
			if(item.isAccepted){
					trace("A valid item was dropped");
					itemsArray.push(item.itemName)
			}
			
			else{
					trace("This item was not accepted");
			}
		}
		
		public function getScore():String{
			//READ THIS - test for syntax
			var correct:int = 0;
			for(var i = 0; i < itemsArray.length; i++){
				if(itemsArray[i].isAccepted){
					correct++;
				}
			}
			return correct + "/" + itemsArray.length;
		}

	}
	
}
package components{
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	public class GoBag {

		public var itemsArray:Array;
		public var itemName:String;
		public var description:String;
		public var imageSprite:Sprite;
		
		public function GoBag(imageMap:Bitmap) {
			trace("go bag connected");
			itemsArray = new Array();
			
			imageSprite = new Sprite();
			addChild(imageSprite);
			imageSprite.addChild(imageMap);
		}
		
		public function addtoBag(item:GoBagItem){
			
			trace("you dropped something on the bag!")
			
			if(item.isAccepted){
					trace("A valid item was dropped");
					itemsArray.push(item.itemName)
			}
			
			else{
					trace("This item was not accepted");
			}
		}

	}
	
}
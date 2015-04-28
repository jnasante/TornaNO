package components {
	
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.events.MouseEvent;
	
	public class GoBagItem extends Sprite{
		
		public var itemName:String;
		public var description:String;
		public var isAccepted:Boolean;
		public var imageSprite:Sprite;

		public function GoBagItem(item:String, desc:String, accepted:Boolean, imageMap:Bitmap) {
			itemName = item;
			description = desc;
			isAccepted = accepted;
						
			imageSprite = new Sprite();
			addChild(imageSprite);
			imageSprite.addChild(imageMap);
			
			addEventListener(MouseEvent.MOUSE_DOWN, dragObject);
			addEventListener(MouseEvent.MOUSE_UP, releaseObject);
		}
		
		private function dragObject(e:MouseEvent):void{
			
		}
		
		private function releaseObject(e:MouseEvent):void{
			
		}

	}
	
}

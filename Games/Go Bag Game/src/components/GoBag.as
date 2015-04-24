package components{
	
	public class GoBag {

		public var itemsArray:Array;
		
		public function GoBag() 
		{
			trace("go bag connected");
			itemsArray = new Array();
		}
		
		public function addtoBag(GoBagItem item){
			
			trace("you dropped something on the bag!")
			
			if(item.isAccepted)
			{
					trace("A valid item was dropped");
					itemsArray.push(item.itemName)
					
			}
			else
			{
					trace("This item was not accepted");
			
			}
		}

	}
	
}

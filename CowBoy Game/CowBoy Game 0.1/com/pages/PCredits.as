package com.pages{
	
	import com.framework.PageEvent;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class PCredits extends MovieClip {
		
		
		public function PCredits() {
			BtnHome.addEventListener(MouseEvent.CLICK, BtnHomeClick);
			
		}
		
	
		private function BtnHomeClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Home"));
		}

	}
	
}

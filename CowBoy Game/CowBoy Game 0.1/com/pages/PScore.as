package com.pages{
	
	import com.framework.PageEvent;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class PScore extends MovieClip {
		
		
		public function PScore() {
			BtnAchievements.addEventListener(MouseEvent.CLICK, BtnAchievementsClick);
			BtnHome.addEventListener(MouseEvent.CLICK, BtnHomeClick);
			// constructor code
		}
		
		private function BtnHomeClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Home"));
		}
		private function BtnAchievementsClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Achievements"));
		}

	}
	
}

package com.pages {
	
	import com.framework.PageEvent;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class PAchievements extends MovieClip {
		
		
		public function PAchievements() {
			BtnScore.addEventListener(MouseEvent.CLICK, BtnScoreClick);
			BtnHome.addEventListener(MouseEvent.CLICK, BtnHomeClick);
			
		}
		
		private function BtnScoreClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Score"));
		}
		
		private function BtnHomeClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Home"));
		}

	}
	
}

package com.pages{
	
	import com.framework.NewPageEvent;
	import com.framework.PageEvent;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	
	public class PHome extends MovieClip {
		
		public function PHome() {
			BtnAchievements.addEventListener(MouseEvent.CLICK, BtnAchievementsClick);
			BtnScore.addEventListener(MouseEvent.CLICK, BtnScoreClick);
			BtnCredits.addEventListener(MouseEvent.CLICK, BtnCreditsClick);
			// constructor code
		}
		
		private function BtnCreditsClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Credits"));
		}
		
		private function BtnScoreClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Score"));
		}
		
		private function BtnAchievementsClick(e:MouseEvent):void 
		{
			parent.dispatchEvent(new PageEvent("newpage","Achievements"));
		}

	}
	
}

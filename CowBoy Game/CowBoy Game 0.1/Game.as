package  
{
	import com.framework.Page;
	import com.framework.PageManager;
	import com.pages.PAchievements;
	import com.pages.PCredits;
	import com.pages.PHome;
	import com.pages.PScore;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.system.System;
	
	
	public class Game extends MovieClip
	{
		private var _pageManager:PageManager;
		public function Game() 
		{
			trace("1.Game");
			_pageManager = new PageManager();
			_pageManager.addPage(new Page(new PHome(),"Home"));
			_pageManager.addPage(new Page(new PScore(), "Score"));
			_pageManager.addPage(new Page(new PAchievements(),"Achievements"));
			_pageManager.addPage(new Page(new PCredits(),"Credits"));
			addChild(_pageManager);
			
			_pageManager.showPage("Home");
		}
		
	}

}
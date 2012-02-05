package com.framework 
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.system.System;
	 import flash.sampler.getSize;
	
	public class PageManager extends Sprite
	{
		private var _currentPage: String;
		private var _pages: Vector.<IPage>;
		public function PageManager() 
		{
			_pages = new Vector.<IPage>;
			
		}
		
		private function showPageEvent(e:PageEvent):void 
		{
			trace("Catch " + e.pagename + " from Page");
			showPage(e.pagename);
		}
		
		public function addPage(pg:Page)
		{
			_pages.push(pg); 	//Page.visible=false в конструкторі
			(_pages[_pages.length - 1] as DisplayObject).addEventListener(PageEvent.NEW_PAGE, showPageEvent);
			addChild(_pages[_pages.length - 1] as Sprite);
		}
		public function showPage(npage:String)
		{
			if (_currentPage!=null)
			 for (var i:int = 0; i < _pages.length; i++ )  //hide curent
				if (_pages[i].getName() == _currentPage)
					_pages[i].hide();
			
			_currentPage = npage;
			for ( i = 0; i < _pages.length; i++ ) //show new
				if (_pages[i].getName() == _currentPage)
				_pages[i].show();
		}
	
		/*	_srch_page = nm; 
			_pages.some(findPage, null);
			_srch_page = null;
			addChild(_currentPage as Sprite);
		private function findPage(item:Object, index:int, vector:Vector.<IPage>):Boolean
		{
			//trace(item.getName());
			if (item.getName() == _srch_page)
			{
				_currentPage = item as Page;
				return true;
			}
			else
				return false;
		}*/
		
	}

}
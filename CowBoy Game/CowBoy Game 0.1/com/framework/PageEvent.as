package com.framework 
{
	import flash.events.Event;
	
	public class PageEvent extends Event 
	{
		public static const NEW_PAGE : String = "newpage";
		private var _pagename:String;
		public function PageEvent(type:String,pagename:String) 
		{ 
			super(type);
			_pagename = pagename;
		} 
		
		public override function clone():Event 
		{ 
			return new PageEvent(type,_pagename);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("PageEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
		public function get pagename():String 
		{
			return _pagename;
		}
		
		
	}
	
}
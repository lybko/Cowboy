package com.framework 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	public class Page extends MovieClip implements IPage 
	{
		private var _name:String;
		private var _body:MovieClip;
		public function Page(mc:MovieClip,nm:String) 
		{
			_body = mc;
			this.addChild(_body);
			visible = false;
			_name = nm;
		}
		
		
		/* INTERFACE IPage */
		
		public function show() 
		{
			visible = true;
		}
		
		public function hide() 
		{
			visible = false;
		}
		
		public function getName():String
		{
			return _name;
		}
		//
	}

}
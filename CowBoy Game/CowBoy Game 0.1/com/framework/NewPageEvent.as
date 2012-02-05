package com.framework 
{
	/**
	 * ...
	 * @author qwert
	 */
	public class NewPageEvent extends PageEvent 
	{
		private var _name:String;
		public function NewPageEvent(type:String,name:String) 
		{
			_name = name;
		}
		
		public function get name():String 
		{
			return _name;
		}
		
	}

}
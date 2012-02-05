package  {
	
	import flash.display.MovieClip;
	
	
	public class App extends MovieClip {
		
		private var _game:Game;
		private var ph:MovieClip;
		public function App() {
			
			trace("1.App");
			_game = new Game();
			stage.addChild(_game);
			
			
		}
	}
	
}

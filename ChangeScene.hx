package;

import hxtico.Tico;

class ChangeScene
{
	public function new() {init(); draw(); update();} //empty constructor
	
	function init()
	{
		Tico.load = function()
		{
			
		}
	}
	
	function update()	
	{
		Tico.update = function()
		{
			trace("scene working fine!");
		}
	}
	
	function draw()
	{
		Tico.draw = function() 
		{
			Tico.graphics.clear(0,255,0,0);	
		}
	}
}

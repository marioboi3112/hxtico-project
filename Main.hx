package;
import hxtico.Tico; //import our Tico library

class Main {
	static var x: Int = 0;
	static var y: Int = 0;
	static var versionStr: String = Tico.getVersion();
    public static function main() {
        var canvas: TicoCanvas;
        Tico.load = function() {
            canvas = Tico.graphics.newCanvas(320, 240);
        };
        
        Tico.update = function()
		{
			x++; //increment x by 1, every frame...
			trace(versionStr);
		}
        
        Tico.draw = function() {
            canvas.attach();
            Tico.graphics.clear();
            Tico.graphics.drawRectangle(x, y, 32, 32);
            canvas.detach();
            canvas.auto();
        };
    }
    
    
    private static function playerLogic()
    {
		if (Tico.input.isPressed("w")) 
		{
			y -= 2;
		}
	}
}

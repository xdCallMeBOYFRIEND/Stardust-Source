package objects;

// Just so I don't need to copy paste these functions every time I need to add offsets to anything

class OffsettableSprite extends FlxSprite{
    public var animOffsets:Map<String, Array<Dynamic>> = new Map<String, Array<Dynamic>>();
	public var animPlayerOffsets:Map<String, Array<Dynamic>> = new Map<String, Array<Dynamic>>();

    public function addOffset(name:String, x:Float = 0, y:Float = 0)
    {
        animOffsets[name] = [x, y];
    }

	public function addPlayerOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animPlayerOffsets[name] = [x, y];
	}

    public inline function getAnimOffset(name:String) {
		if (animOffsets[name] != null)
			return animOffsets[name];
		return [0,0];
	}

	public inline function getAnimPlayerOffset(name:String) {
		if (animPlayerOffsets[name] != null)
			return animPlayerOffsets[name];
		return [0,0];
	}
}
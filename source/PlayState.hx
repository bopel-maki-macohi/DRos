package;

import data.AnimationData;
import flixel.FlxState;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		var test = new AnimationData().loadFromFile('assets/data/test.json');
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

package data.animation;

import json2object.JsonParser;
import json2object.JsonWriter;
import lime.utils.Assets;

class AnimationData
{
	@:default([])
	public var events:Array<AnimationEvent>;

	public function new() {}

	public function loadFromFile(filePath:String):AnimationData
	{
		if (!Assets.exists(filePath))
		{
			throw 'AnimationData / loadFromFile : $filePath doesn\'t exist stupid!';
		}

		var data = new JsonParser<AnimationData>().fromJson(Assets.getText(filePath), filePath);

		this.events = data.events;

		return this;
	}

	public function toString()
	{
		return new JsonWriter<AnimationData>().write(this, '');
	}
}

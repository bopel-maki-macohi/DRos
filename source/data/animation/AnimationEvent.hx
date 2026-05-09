package data.animation;

import json2object.JsonWriter;

class AnimationEvent
{
	public var id(default, null):String;

	public var data:Dynamic;

	public function new(id:String, data:Dynamic)
	{
		this.id = id;
		this.data = data;
	}

	public function toString()
	{
		return new JsonWriter<AnimationEvent>().write(this, '');
	}
}

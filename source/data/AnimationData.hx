package data;

import json2object.JsonParser;
import lime.utils.Assets;

class AnimationData
{
	public static final CURRENT_VERSION:Int = 0;

	@:default(CURRENT_VERSION)
	public var version:Int;

	@:default([])
	public var events:Array<Dynamic>;

	public function new() {}

	public function loadFromFile(filePath:String):AnimationData
	{
		if (!Assets.exists(filePath))
		{
			throw 'AnimationData / loadFromFile : $filePath doesn\'t exist stupid!';
		}

		var data = new JsonParser<AnimationData>().fromJson(Assets.getText(filePath), filePath);

		this.events = data.events;

		switch (data.version) {}

		this.version = CURRENT_VERSION;

		return this;
	}
}

package data;

import json2object.JsonParser;
import lime.utils.Assets;

class AnimationData
{
	public static final CURRENT_VERSION:Int = 0;

	public var version:Null<Int>;

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

		switch (data?.version ?? 0) {}

		this.version = CURRENT_VERSION;

		return this;
	}
}

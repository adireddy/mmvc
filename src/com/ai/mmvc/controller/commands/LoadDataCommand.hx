package com.ai.mmvc.controller.commands;

import com.ai.mmvc.controller.signals.LoadData;
import com.ai.mmvc.model.AppData;
import flash.display.Bitmap;

import openfl.Assets;

import mmvc.impl.Command;

class LoadDataCommand extends Command {
	
	@inject
	public var appData:AppData;

	@inject
	public var loadData:LoadData;

	public function new() {
		super();
	}

	override public function execute():Void	{
		trace("Loading XML and Image");
		trace("Assigning loaded data to AppData Model and dispatching LoadData completed signal");
		appData.text = Assets.getText("assets/test.xml");
		appData.img = new Bitmap(Assets.getBitmapData("assets/haxe.png"));
		loadData.completed.dispatch();
	}
}
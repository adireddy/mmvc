package com.ai.mmvc.view;

import com.ai.mmvc.controller.signals.LoadData;
import com.ai.mmvc.model.AppData;
import com.ai.mmvc.core.View;

import mmvc.impl.Mediator.Mediator;


class ImageViewMediator extends Mediator<ImageView> {
	
	@inject
	public var loadImage:LoadData;

	@inject
	public var appData:AppData;

	public function new() {
		super();
	}

	override function onRegister() {
		trace("Dispatching loadImage signal which triggers LoadDataCommand");
		mediate(loadImage.completed.addOnce(loadCompleted));
		loadImage.dispatch();
	}

	override public function onRemove():Void {
		super.onRemove();
	}

	function loadCompleted() {
		trace("Signal completed function setting up view with the data from AppData model");
		view.processData(appData.text);
		view.showImage(appData.img);
	}
}
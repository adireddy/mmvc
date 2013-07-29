package com.ai.mmvc;

import mmvc.impl.Mediator.Mediator;

class ApplicationViewMediator extends Mediator<ApplicationView> {
	
	public function new() {
		super();
	}

	override function onRegister() {
		trace("Creating views");
		super.onRegister();
		view.createViews();
	}

	override public function onRemove():Void {
		super.onRemove();
	}
}
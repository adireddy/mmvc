package com.ai.mmvc;

import mmvc.impl.Mediator.Mediator;

class ApplicationViewMediator extends Mediator<ApplicationView> {
	
	public function new() {
		super();
	}

	/**
	Context has now been initialized. Time to create the rest of the main views in the application
	@see mmvc.impl.Mediator.onRegister()
	*/
	override function onRegister() {
		super.onRegister();
		view.createViews();
	}

	/**
	@see mmvc.impl.Mediator
	*/
	override public function onRemove():Void {
		super.onRemove();
	}
}
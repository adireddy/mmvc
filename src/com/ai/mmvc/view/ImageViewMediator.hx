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

	/**
	Dispatches loadTodoList on registration of mediator
	@see mmvc.impl.Mediator
	@see mmvc.base.MediatorBase.mediate()
	*/
	override function onRegister() {
		//using mediate() to store listeners for easy cleanup during removal
		//mediate(view.signal.add(viewHandler));
		mediate(loadImage.completed.addOnce(loadCompleted));
		//mediate(loadTodoList.failed.addOnce(loadFailed));

		loadImage.dispatch();
	}

	/**
	Override onRemove to remove any unmediated listeners
	@see mmvc.impl.Mediator
	*/
	override public function onRemove():Void {
		super.onRemove();
		//remove un mediated listeners
	}

	/**
	callback for successful load of TodoList
	@see example.todo.signal.LoadTodoList
	*/
	function loadCompleted() {
		view.processData(appData.text);
		view.showImage(appData.img);
	}

	function loadFailed(error:Dynamic) {
		//view.showError(Std.string(error));
	}

	/**
	Adds a new todo item to the model when CREATE_TODO event is dispatched
	*/
	function viewHandler(event:String, view:View) {
		
	}
}
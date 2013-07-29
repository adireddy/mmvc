package com.ai.mmvc;

import mmvc.api.IViewContainer;
import mmvc.impl.Context;

import com.ai.mmvc.ApplicationView;
import com.ai.mmvc.ApplicationViewMediator;
import com.ai.mmvc.view.ImageView;
import com.ai.mmvc.view.ImageViewMediator;
import com.ai.mmvc.controller.signals.LoadData;
import com.ai.mmvc.controller.commands.LoadDataCommand;

import com.ai.mmvc.model.AppData;

class ApplicationContext extends Context {

	public function new(?contextView:IViewContainer = null) {
		super(contextView);
	}
	
	override public function startup() {
		// wiring for todo model
		commandMap.mapSignalClass(LoadData, LoadDataCommand);
		
		injector.mapSingleton(AppData);
		
		mediatorMap.mapView(ImageView, ImageViewMediator);		
		mediatorMap.mapView(ApplicationView, ApplicationViewMediator);
	}

	override public function shutdown() {

	}
}
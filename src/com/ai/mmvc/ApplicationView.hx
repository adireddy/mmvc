package com.ai.mmvc;

import com.ai.mmvc.core.View;
import com.ai.mmvc.view.ImageView;
import mmvc.api.IViewContainer;

class ApplicationView extends View implements IViewContainer {
	
	public var viewAdded:Dynamic -> Void;
	public var viewRemoved:Dynamic -> Void;

	public function new() {
		super();
	}
	
	public function createViews() {
		trace("Creating ImageView which triggers ImageViewMeidator");
		var imageView = new ImageView();
		addChild(imageView);
	}
	
	public function isAdded(view:Dynamic):Bool {
		return true;
	}
	
	override public function dispatch(event:String, view:View) {
		switch(event) {
			case View.ADDED:
				viewAdded(view);
				
			case View.REMOVED: 
				viewRemoved(view);
				
			default:
				super.dispatch(event, view);
		}
	}
	
	override function initialize() {
		super.initialize();
		#if flash
			flash.Lib.current.addChild(sprite);
		#elseif js
			js.Lib.document.body.appendChild(element);
		#end
	}	
}
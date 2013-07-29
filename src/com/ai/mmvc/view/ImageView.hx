package com.ai.mmvc.view;

import com.ai.mmvc.core.View;
import flash.display.Bitmap;
import flash.Lib;

class ImageView extends View {
	
	public function new() {
		super();
	}
	
	public function showImage(img:Bitmap):Void {
		Lib.current.addChild(img);
	}
	
	public function processData(text:String):Void {
		trace("VIEW: " + text);
	}
}


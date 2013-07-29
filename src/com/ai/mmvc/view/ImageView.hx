package com.ai.mmvc.view;

import com.ai.mmvc.core.View;
import flash.display.Bitmap;
import flash.Lib;

class ImageView extends View {
	
	public function new() {
		super();
	}
	
	public function showImage(img:Bitmap):Void {
		trace("Displaying image");
		Lib.current.addChild(img);
		img.x = (800 - img.width) / 2;
		img.y = (600 - img.height) / 2;
	}
	
	public function processData(text:String):Void {
		trace("Tracing XML text");
		trace("VIEW: " + text);
	}
}


package com.ai.mmvc.controller.signals;

import msignal.Signal;

class LoadData extends Signal0 {
	
	public var completed:Signal0;
	public var failed:Signal1<Dynamic>;
	
	public function new() {
		super();
		completed = new Signal0();
		failed = new Signal1<Dynamic>(Dynamic);
	}
}
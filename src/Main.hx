package;

import com.ai.mmvc.ApplicationContext;
import com.ai.mmvc.ApplicationView;

class Main {
	
	public static function main() {
		var view:ApplicationView = new ApplicationView();
		var context:ApplicationContext = new ApplicationContext(view);
	}
}
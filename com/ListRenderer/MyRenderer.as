package  com.ListRenderer {
	import fl.controls.listClasses.CellRenderer;
	import flash.text.TextFormat;
	
	public class MyRenderer extends CellRenderer {
		
		private var tf:TextFormat = new TextFormat();
		private var af:TextFormat = new TextFormat();
		
		public function MyRenderer() {
			
		}
		
		override public function set data(newData:Object):void {
			_data = newData;
			
			tf.size = 10;
			tf.color = 0x000000;
			
			af.size = 12;
			af.color = 0x333333;
		
			var originalStyles:Object = CellRenderer.getStyleDefinition();
		
			setStyle("upSkin", originalStyles.upSkin);
			setStyle("downSkin", originalStyles.downSkin);
			setStyle("overSkin", originalStyles.overSkin);
			setStyle("selectedUpSkin", originalStyles.selectedUpSkin);
			setStyle("selectedDownSkin", originalStyles.selectedDownSkin);
			setStyle("selectedOverSkin", originalStyles.selectedOverSkin);
			
			if (_data.v_enabled == "false") {
				setStyle("textFormat", tf);
				mouseEnabled = false;
			} else if (_data.v_enabled == "true") {
				setStyle("textFormat", af);
				mouseEnabled = true;
			} else {
				setStyle("textFormat", af);
				mouseEnabled = true;
			}
		}
		
	}
	
}

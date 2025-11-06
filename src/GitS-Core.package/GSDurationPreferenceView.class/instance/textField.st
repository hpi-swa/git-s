user interface
textField

	^ (PluggableTextMorph
		on: self
		text: #preferenceValue
		accept: #preferenceValue:notifying:)
			acceptOnCR: true;
			wrapFlag: false;
			hideScrollBarsIndefinitely;
			vResizing: #rigid;
			hResizing: #rigid;
			height: ToolBuilder default inputFieldHeight;
			width: (TextStyle default compositionWidthFor: 30);
			yourself
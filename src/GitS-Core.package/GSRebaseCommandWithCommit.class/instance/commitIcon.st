icon
commitIcon
	| rect |
	^ self createIcon: [:canvas |
		rect := canvas clipRect.
		rect := rect insetBy: rect extent / 4.
		canvas
			drawImage: self lineIcon at: 0 @ 0;
			fillOval: rect color: Color white;
			frameOval: rect width: 4 color: Color black]
stepping and presenter
step
	| style |
	self invalidRect: (self outerBounds outsetBy: 1 px).
	self done value ifTrue: [^ self delete].
	self bounds: self morph bounds.
	self borderStyle
		color: self morph keyboardFocusColor;
		width: self morph keyboardFocusWidth;
		gapLength: 15 px;
		dashLength: 15 px.
	style := self borderStyle.
	style offset: (style offset - 1 px rem: style dashLength + style gapLength).
toolbuilder
build
	^ self builder pluggablePanelSpec new
		model: self;
		children: #buildChildren;
		layout: #horizontal;
		yourself
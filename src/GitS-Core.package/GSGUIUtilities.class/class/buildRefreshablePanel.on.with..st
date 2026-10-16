toolbuilder
buildRefreshablePanel: childBlock on: changeSymbol with: builder
	^ (GSRefreshablePanelModel new
		model: self;
		childBlock: childBlock;
		refreshSymbol: changeSymbol;
		builder: builder;
		yourself) build
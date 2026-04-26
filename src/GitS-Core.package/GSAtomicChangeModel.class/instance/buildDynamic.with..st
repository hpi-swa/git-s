toolbuilder
buildDynamic: aSelector with: builder
	^ GSDynamicallyBuilt
		model: (GSVersionChangeVersionBuilderModel new
					versionChange: self versionChange;
					versionSelector: aSelector;
					buildBlock: self buildBlock;
					yourself)
		child: #buildChild
		buildWith: builder
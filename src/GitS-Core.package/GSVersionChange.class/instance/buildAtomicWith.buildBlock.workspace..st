toolbuilder
buildAtomicWith: builder buildBlock: aBlock workspace: aSpec
	^ (self atomicModelClass new
		versionChange: self;
		builder: builder;
		buildBlock: aBlock;
		workspace: aSpec;
		yourself) build
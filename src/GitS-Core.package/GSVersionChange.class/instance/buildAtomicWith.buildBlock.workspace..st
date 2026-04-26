toolbuilder
buildAtomicWith: builder buildBlock: aBlock workspace: aSpec
	^ (self atomicModelClass new
		versionChange: self;
		buildBlock: aBlock;
		workspace: aSpec;
		yourself) buildWith: builder
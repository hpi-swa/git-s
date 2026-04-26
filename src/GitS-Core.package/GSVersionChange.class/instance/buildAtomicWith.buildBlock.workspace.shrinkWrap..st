toolbuilder
buildAtomicWith: builder buildBlock: aBlock workspace: aSpec shrinkWrap: aBoolean
	^ (self atomicModelClass new
		versionChange: self;
		buildBlock: aBlock;
		workspace: aSpec;
		yourself) buildWith: builder shrinkWrap: aBoolean
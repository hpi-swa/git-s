api
generate: aBlock
	self assert: self process isNil description: 'should only be called once'.
	self process:
		([[aBlock cull: self] ensure: [self finished]]
			forkAt: Processor userBackgroundPriority).
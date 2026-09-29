building
buildSar
	GSMapperBatchProcessor new
		label: 'Building .sar...';
		batchSelector: #batchAdd:toSar:;
		remainingSelector: #addToSar:;
		extraArguments: {self};
		mapperBlock: #yourself;
		batchLabelBlock: [:each | 'Adding {1}' format: {each batchLabel}];
		remainingLabelBlock: [:each | 'Adding {1}' format: {each name}];
		processAll: self mappers.
	self
		addString: (self fixupChunkTerminatorsIn: self preamble)
		at: 'install/preamble'.
	^ self zip
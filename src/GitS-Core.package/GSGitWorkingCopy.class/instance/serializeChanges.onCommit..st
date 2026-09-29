changes-operations
serializeChanges: aCollection onCommit: aCommitOrNil
	| filesystem |
	filesystem := self filesystemOn: aCommitOrNil.
	GSMapperBatchProcessor new
		label: 'Saving changes';
		batchSelector: #batchSerialize:into:;
		remainingSelector: #serializeInto:;
		extraArguments: {filesystem};
		mapperBlock: #mapper;
		batchLabelBlock: [:batcher | 'from {1}' format: {batcher batchLabel}];
		remainingLabelBlock: [:change | 'from {1}' format: {change mapper}];
		processAll: aCollection.
	^ filesystem
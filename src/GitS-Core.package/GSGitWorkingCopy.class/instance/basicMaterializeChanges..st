changes-operations
basicMaterializeChanges: aCollection
	GSMapperBatchProcessor new
		label: 'Loading changes';
		batchSelector: #batchMaterialize:in:;
		remainingSelector: #materializeIn:;
		extraArguments: {self};
		mapperBlock: #mapper;
		batchLabelBlock: [:batcher | 'from {1}' format: {batcher batchLabel}];
		remainingLabelBlock: [:change | 'from {1}' format: {change mapper}];
		processAll: aCollection.
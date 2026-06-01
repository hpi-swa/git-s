batching
shouldCreateAfterBatch
	^ ShouldCreateAfterBatch ifNil: [ShouldCreateAfterBatch := false]
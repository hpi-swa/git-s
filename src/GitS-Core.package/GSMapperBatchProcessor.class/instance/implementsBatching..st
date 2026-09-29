batching
implementsBatching: aMapperClass
	<linterIgnoreSends: #(perInstance perClass none)>
	| perInstance perClass |
	perInstance := aMapperClass includesSelector: self batchSelector.
	perClass := aMapperClass class includesSelector: self batchSelector.
	self
		assert: (perInstance and: [perClass]) not
		description: ('{1} should not implement {2} on both the instance and the class side'
						format: {aMapperClass. self batchSelector}).
	perInstance ifTrue: [^ #perInstance].
	perClass ifTrue: [^ #perClass].
	^ #none
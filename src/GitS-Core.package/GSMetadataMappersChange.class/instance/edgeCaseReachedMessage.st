edge-case
edgeCaseReachedMessage
	^ 'In the project structure, the {1} can now be {2}.
		Do you want to do that?' gitSFormat: {
			self description withFirstCharacterDownshifted.
			self isExcludedInEdgeCase ifTrue: ['excluded'] ifFalse: ['included']}
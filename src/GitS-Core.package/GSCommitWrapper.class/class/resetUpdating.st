updating
resetUpdating
	UpdateTimeStamps := nil.
	Process allInstances
		select: [:each | (each suspendedContext ifNotNil: [:context | context findContextSuchThat: [:sender |
							sender method homeMethod methodReference = (self class >> #updateSetFor:) methodReference]]) notNil]
		thenDo: #terminateAggressively.
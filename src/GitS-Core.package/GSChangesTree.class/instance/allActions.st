actions
allActions
	^ Array streamContents: [:stream |
		stream nextPutAll: self ownActions.
		((self descendants groupBy: #class) withKeysSorted: #name ascending) keysAndValuesDo: [:class :descendants |
			stream nextPutAll: (class actionsForAncestorTree: self withChanges: descendants)]]
credentials
formatReusableCredentials: credentials usedIn: workingCopies
	^ 'Reuse credentials for user name {1} used in project{2} {3}'
		gitSFormat: {
			credentials first printString.
			workingCopies size > 1 ifTrue: ['s'] ifFalse: [''].
			(workingCopies keys collect: [:workingCopy | | urls |
				urls := workingCopies at: workingCopy.
				'{1} (url{2}: {3})' gitSFormat: {
					workingCopy name printString.
					urls size > 1 ifTrue: ['s'] ifFalse: [''].
					(urls collect: #asString) asOrderedCollection sorted joinSeparatedBy: ', '}])
				joinSeparatedBy: ', '}
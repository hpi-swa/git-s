credentials
formatReusableCredentials: credentials usedIn: workingCopies detailed: aBoolean
	| formatted |
	formatted := 'Reuse credentials for user name {1}' gitSFormat: {credentials first printString}.
	aBoolean ifFalse: [^ formatted].
	^ '{1} used in {2} {3}'
		gitSFormat: {
			formatted.
			'project' asPluralBasedOn: workingCopies.
			(workingCopies keys collect: [:workingCopy | | urls |
				urls := workingCopies at: workingCopy.
				'{1} ({2}: {3})' gitSFormat: {
					workingCopy name printString.
					'url' asPluralBasedOn: urls.
					(urls collect: #asString) asOrderedCollection sorted joinSeparatedBy: ', '}])
				joinSeparatedBy: ', '}
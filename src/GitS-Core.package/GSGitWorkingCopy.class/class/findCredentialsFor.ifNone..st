credentials
findCredentialsFor: aStringOrUrl ifNone: aBlock
	| allCredentials chosen |
	allCredentials := Dictionary new.
	self registry values do: [:workingCopy |
		workingCopy credentials keysAndValuesDo: [:url :credentials |
			((allCredentials at: credentials ifAbsentPut: [Dictionary new])
				at: workingCopy ifAbsentPut: [Set new])
					add: url]].
	allCredentials ifEmpty: [^ aBlock value].
	chosen := GSGUIUtilities
				chooseFromValues: {#new}, (allCredentials keys sorted: #first ascending)
				label: [:credentials |
					credentials = #new
						ifTrue: ['No, enter new credentials']
						ifFalse: [self formatReusableCredentials: credentials usedIn: (allCredentials at: credentials)]]
				title: 'Do you want to reuse credentials?'.
	chosen = #new ifTrue: [^ aBlock value].
	^ chosen
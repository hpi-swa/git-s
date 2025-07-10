credentials
findCredentialsFor: aStringOrUrl ifNone: aBlock
	| allCredentials |
	allCredentials := Dictionary new.
	self registry values do: [:workingCopy |
		workingCopy credentials keysAndValuesDo: [:url :credentials |
			((allCredentials at: credentials ifAbsentPut: [Dictionary new])
				at: workingCopy ifAbsentPut: [Set new])
					add: url]].
	allCredentials ifEmpty: [^ aBlock value].
	^ self offerToReuseCredentials: allCredentials detailed: false ifNone: aBlock
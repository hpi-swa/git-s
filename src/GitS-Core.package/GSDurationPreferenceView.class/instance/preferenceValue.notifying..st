user interface
preferenceValue: aString notifying: requestor
	| value |
	value := Compiler evaluate: aString for: requestor.
	(value isNil or: [value isKindOf: Duration])
		ifTrue: [self preference preferenceValue: value].
	^ true
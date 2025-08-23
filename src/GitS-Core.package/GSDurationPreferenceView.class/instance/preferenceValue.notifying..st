user interface
preferenceValue: aTextOrString notifying: requestor
	| value |
	value := self parseValue: aTextOrString asString notifying: requestor.
	(value isNil or: [value isKindOf: Duration])
		ifTrue: [self preference preferenceValue: value].
	^ true
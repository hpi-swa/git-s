common-prefix
commonPrefixOf: aCollection ifNone: aBlock
	aCollection ifEmpty: [^ aBlock value].
	^ aCollection reduce: [:a :b | self commonPrefixOf: a and: b]
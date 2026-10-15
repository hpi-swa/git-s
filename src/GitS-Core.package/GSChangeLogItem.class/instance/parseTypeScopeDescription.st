accessing
parseTypeScopeDescription
	| firstLine matcher |
	matcher := ('(', ((self class types copyWithout: #unknown) joinSeparatedBy: '|'), ')\(([- a-zA-Z]+)\)\: (.*)') asRegex.
	firstLine := self message lines first.
	(matcher matches: firstLine) ifFalse: [^ {#unknown. nil. firstLine}].
	^ (2 to: 4) collect: [:each | matcher subexpression: each]
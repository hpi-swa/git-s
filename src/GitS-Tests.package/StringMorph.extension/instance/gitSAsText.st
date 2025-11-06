*GitS-Tests-matching
gitSAsText
	| string |
	string := self contents.
	self emphasis = 0 ifTrue: [^ string asText].
	^ Text string: string attribute: (TextEmphasis new
										emphasisCode: self emphasis;
										yourself)
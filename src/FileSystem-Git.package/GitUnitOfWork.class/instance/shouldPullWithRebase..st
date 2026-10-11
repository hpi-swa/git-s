remotes
shouldPullWithRebase: aString
	| value |
	value := self
		configAt: ('branch.{1}.rebase' format: {aString})
		ifAbsent: [self configAt: 'pull.rebase'].
	(#('i' 'interactive') includes: value) ifTrue: [^ #interactive].
	^ self parseBooleanConfigValue: value
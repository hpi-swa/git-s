compiling
compile: aString notifying: requestor
	| activeSources matcher model |
	activeSources := self sources select: #isActive.
	matcher := self activeMatcher compile: aString caseSensitive: self caseSensitive.
	model := self createModel.
	^ [:commit |
		model commit: commit.
		self match: activeSources of: model using: matcher]
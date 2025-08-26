compiling
compile: aString notifying: requestor
	| matcher sources model |
	sources := self sources select: #isActive.
	matcher := self activeMatcher compile: aString caseSensitive: self caseSensitive.
	model := self createModel.
	^ [:commit |
		model commit: commit.
		self match: sources of: model using: matcher]
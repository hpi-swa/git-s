compiling
compileNotifying: requestor
	| matcher sources model workingCopy |
	sources := self sources select: #isActive.
	matcher := self activeMatcher compile: self expression caseSensitive: self caseSensitive.
	workingCopy := self activeWorkingCopy.
	^ [:commit |
		model := self modelClass new
					workingCopy: workingCopy;
					commit: commit;
					yourself.
		self match: sources of: model using: matcher]
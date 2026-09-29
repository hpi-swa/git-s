requesting
requestMissingInstVars
	super requestMissingInstVars.
	self commit ifNil: [
		self commit: (self workingCopy selectCommitInDialog:
			('Select a commit for the {1} command' format: {self commandName}))].
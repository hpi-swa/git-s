running
start
	self hasStarted ifTrue: [^ Promise unit: nil].
	self operation: self workingCopy activeOperation.
	self operation increaseDeferMaterializationLevel.
	^ (self workingCopy ensureHeadCommitMaterializedTo: 'rebase')
		then: [:x | self originalHeadCommit: self workingCopy headCommit]
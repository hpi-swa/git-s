running
start
	self hasStarted ifTrue: [^ Promise unit: nil].
	^ (self workingCopy ensureHeadCommitMaterializedTo: 'rebase')
		then: [:x | self originalHeadCommit: self workingCopy headCommit]
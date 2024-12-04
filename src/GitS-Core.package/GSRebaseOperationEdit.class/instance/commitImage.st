running
commitImage
	^ (self workingCopy actionCommitWithInitialMessage: self commit message)
		then: [:x | self nextOperation]
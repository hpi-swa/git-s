actions-private
basicCommit
	self workingCopy
		commitChanges: self changes
		message: self message
		parents: self parents
		author: self author.
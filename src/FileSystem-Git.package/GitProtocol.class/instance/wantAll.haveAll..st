commands
wantAll: wantGitSignatures haveAll: haveGitSignatures
	^ self
		wantAll: wantGitSignatures
		haveAll: haveGitSignatures
		capabilities: GitProtocolCapabilities multiAck sideBand64k ofsDelta
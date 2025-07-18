commands
wantAll: wantGitSignatures haveAll: haveGitSignatures
	^ self
		wantAll: wantGitSignatures
		haveAll: haveGitSignatures
		capabilities: GitProtocolCapabilities sideBand64k ofsDelta multiAck
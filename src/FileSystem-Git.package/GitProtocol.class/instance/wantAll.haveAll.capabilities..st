commands
wantAll: wantGitSignatures haveAll: haveGitSignatures capabilities: capabilities
"TODO:
#readPackfileResponse writes pack to file. need to unpack that file into a repository and read from there. Then answer the objects."
	writer 
		writeWantAll: wantGitSignatures
		haveAll: haveGitSignatures
		capabilities: capabilities
		shallowLines: nil 
		depth: nil.
	
	self flag: 'proper negotiation phase missing...'.
	
	writer flushPacket; done.
	self flush.
	^ reader readPackfileResponse
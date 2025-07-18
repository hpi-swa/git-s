commands
writeWantAll: wantGitSignatures haveAll: haveGitSignatures capabilities: capabilities shallowLines: shallowLines depth: depth
	"Ask the server to send all gitSignatures."

	"The capabilities must be attached at the end."
	self writeWant: (self concatenateArguments: wantGitSignatures first andCapabilities: capabilities).
	wantGitSignatures allButFirstDo: [:each | self writeWant: each].
	shallowLines ifNotNil: [ self writeShallowLines: shallowLines ].
	depth ifNotNil: [ self writeDepth: depth ].
	self flushPacket.
	haveGitSignatures do: [:each | self writeHave: each].
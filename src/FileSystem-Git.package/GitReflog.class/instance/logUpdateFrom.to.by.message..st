appending
logUpdateFrom: previousHexHash to: nextHexHash by: stamp message: aString
	nextHexHash ifNil: [^ self "probably new repository and branch points nowhere"].
	self addEntry: (GitReflogEntry new
						previousHexHash: previousHexHash asHexHash;
						nextHexHash: nextHexHash asHexHash;
						stamp: stamp;
						message: aString withoutLineEndings;
						yourself).
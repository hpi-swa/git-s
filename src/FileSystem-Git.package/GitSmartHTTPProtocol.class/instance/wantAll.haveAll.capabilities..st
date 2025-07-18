commands
wantAll: wantGitSignatures haveAll: haveGitSignatures capabilities: capabilities
	| contents response |
	
	contents := ByteArray streamContents: [ :s|
		outputStream := s.
		writer := GitProtocolWriter on: outputStream.
		writer
			writeWantAll: wantGitSignatures
			haveAll: haveGitSignatures
			capabilities: capabilities
			shallowLines: nil
			depth: nil.
		
		writer done].
	
	response := self postForUploadPack: contents.
	response stream binary.
	^ (GitProtocolReader on: response contentStream) readPackfileResponse
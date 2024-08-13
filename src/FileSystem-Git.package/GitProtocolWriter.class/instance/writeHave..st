commands
writeHave: gitSignature
	^ self writeCommand: 'have' arguments: gitSignature withLineTerminator: true
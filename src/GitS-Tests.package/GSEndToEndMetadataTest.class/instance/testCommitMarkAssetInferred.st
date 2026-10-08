tests
testCommitMarkAssetInferred
	self
		trackPlaintextAt: #('assets' 'inferred.txt');
		writePlaintext: 'hello' at: #('assets' 'inferred.txt');
		commitWithMessage: 'base commit';
		markAssetInferredAt: #('assets' 'inferred.txt');
		commitWithMessage: 'infer mapper' checking: [
			self
				openDialogPath;
				selectMapperChange: 'Plaintext at /assets/inferred.txt (tracked)';
				find: 'Removal on the incoming side of the Plaintext at /assets/inferred.txt (tracked)'];
		check: 'infer mapper' hasBalloon: 'Latest commit of main*'.
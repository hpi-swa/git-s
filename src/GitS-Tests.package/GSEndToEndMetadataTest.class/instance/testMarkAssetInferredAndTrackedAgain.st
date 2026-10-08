tests
testMarkAssetInferredAndTrackedAgain
	self
		trackPlaintextAt: #('assets' 'inferred.txt');
		installPlaintext: 'hello' at: #('assets' 'inferred.txt');
		commitWithMessage: 'base commit';
		markAssetInferredAt: #('assets' 'inferred.txt');
		markAssetTrackedAt: #('assets' 'inferred.txt');
		do: [self leftClick: 'Commit']
		suppressingMessage: 'No changes to commit.'.
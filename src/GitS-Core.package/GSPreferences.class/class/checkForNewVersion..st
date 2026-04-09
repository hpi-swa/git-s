self-update
checkForNewVersion: aBoolean
	<linterIgnoreUnsent> "preference setter"
	CheckForNewVersion := aBoolean.
	self checkForNewVersion ifTrue: [GSSelfUpdater queueNextCheckForNewVersion].
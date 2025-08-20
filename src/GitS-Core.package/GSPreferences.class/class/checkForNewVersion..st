self-update
checkForNewVersion: aBoolean
	CheckForNewVersion := aBoolean.
	self checkForNewVersion ifTrue: [GSSelfUpdater queueNextCheckForNewVersion].
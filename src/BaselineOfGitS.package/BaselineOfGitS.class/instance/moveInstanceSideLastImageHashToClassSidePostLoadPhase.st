migrations
moveInstanceSideLastImageHashToClassSidePostLoadPhase
	<postLoadMigration: 9>
	| oldHashes newHash |
	oldHashes := Smalltalk globals removeKey: #GitSInstanceSideLastImageHashes ifAbsent: [^ self].
	newHash := GSGitWorkingCopy basicImageHash.
	oldHashes keysAndValuesDo: [:workingCopy :oldHash |
		oldHash = newHash ifFalse: [
			workingCopy
				handleMovedImageFrom: oldHash
				to: newHash
				doMove: true]].
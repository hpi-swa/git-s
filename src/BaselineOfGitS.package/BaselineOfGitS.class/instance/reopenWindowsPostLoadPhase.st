migrations
reopenWindowsPostLoadPhase
	<postLoadMigrationAlways: 1>
	| reopenWindowBlocks |
	reopenWindowBlocks := Smalltalk globals removeKey: #GitSReopenWindowBlocks ifAbsent: [^ self].
	[reopenWindowBlocks do: [:each | each value value]]
		ensure: [SystemWindow noteTopWindowIn: self currentWorld].
migrations
reopenWindowsPostLoadPhase
	<postLoadMigrationAlways: 1>
	| reopenWindowBlocks |
	reopenWindowBlocks := Smalltalk globals removeKey: #GitSReopenWindowBlocks ifAbsent: [^ self].
	"deferred UI message + garbageCollect to clean up references to old windows in the current call stack
	(such as receivers of user input that triggered a self-update)"
	Project current addDeferredUIMessage: [
		Smalltalk garbageCollect.
		[reopenWindowBlocks do: [:each | each value value]]
			ensure: [SystemWindow noteTopWindowIn: self currentWorld]].
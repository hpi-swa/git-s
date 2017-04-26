loading and unloading
loadSnapshotInteractively: aSnapshot
	"Let the user choose artifact editions to load from aVersion.
	Answer true if the load was accepted, false if it was canceled."
	self flag: #optimize. "work with diffs, not whole snapshots"
	(self composeSnapshotInteractivelyFrom: store captureSnapshot
		to: aSnapshot
		title: 'Selected changes to load')
		ifNil: [^ false]
		ifNotNil: [:effectiveSnapshot |
			store restoreToSnapshot: effectiveSnapshot.
			^ true].
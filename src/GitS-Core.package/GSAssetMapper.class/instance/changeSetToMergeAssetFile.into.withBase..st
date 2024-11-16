changes-creation
changeSetToMergeAssetFile: right into: left withBase: base
	^ GSMergeUtilities
		atomicMergeLeft: left
		right: right
		base: base
		ifUnchanged: [GSEmptyChangeSet withMapper: self isRemoval: (self isMissing: left)]
		ifMerged: [:merged | GSAssetChangeSet withMapper: self from: left to: merged]
		ifConflict: [:conflict | GSConflictingAssetChangeSet withMapper: self conflict: conflict]
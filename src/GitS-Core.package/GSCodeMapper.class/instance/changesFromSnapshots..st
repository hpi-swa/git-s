changes-creation
changesFromSnapshots: aVersionChange
	^ GSCodeChange
		changesWithMapper: self
		patch: (aVersionChange incoming patchRelativeToBase: aVersionChange current)
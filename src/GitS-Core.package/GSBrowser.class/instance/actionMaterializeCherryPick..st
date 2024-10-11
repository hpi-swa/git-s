actions
actionMaterializeCherryPick: aCommit
	^ self
		onConflictOpenDialogToMaterializeChangeSets:
			(self activeWorkingCopy
				changeSetsToMergeCommitIntoHead: aCommit
				withBase: aCommit firstParent)
		windowTitle: ('Resolve conflicts to edit {1}' format: {aCommit showOneLine})
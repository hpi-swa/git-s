actions-branches
actionResetToCommitAndRestoreIt: aCommit
	"materialize first to allow the user to cancel the operation"
	(self actionMaterializeCommit: aCommit)
		then: [:x | self actionResetToCommit: aCommit].
importing
import
	self checkForMissingHead.
	self headCommit ifNotNil: [[self actionMaterializeHead]
									on: GSPendingChangesEmpty do: []].
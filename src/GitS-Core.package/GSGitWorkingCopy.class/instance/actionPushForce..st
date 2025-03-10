actions-network
actionPushForce: aBoolean
	| ref |
	ref := self currentBranchOrCancel.
	aBoolean ifTrue: [
		GSGUIUtilities confirmOrCancel:
			'Do you really want to force push? This might discard commits made by other members of your team.'].
	(self isSqueakBranchRef: ref) ifFalse: [
		GSGUIUtilities confirmOrCancel:
			('The active ref {1} is not a branch. Push anyway?'
				format: {ref printString})].
	self pushRef: ref force: aBoolean.
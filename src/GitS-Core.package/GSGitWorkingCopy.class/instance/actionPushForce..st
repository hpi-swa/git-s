actions-network
actionPushForce: aBoolean
	| ref |
	ref := self currentBranchIfNilInformAnd: [^ self].
	aBoolean ifTrue: [
		(self confirm: 'Do you really want to force push? This might discard commits made by other members of your team.')
			ifFalse: [^ self]].
	(self isSqueakBranchRef: ref) ifFalse: [
		(UIManager default confirm:
			('The active ref {1} is not a branch. Push anyway?'
				format: {ref printString}))
			ifFalse: [^ self]].
	self pushRef: ref force: aBoolean.
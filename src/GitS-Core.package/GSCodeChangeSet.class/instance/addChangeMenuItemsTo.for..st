menu
addChangeMenuItemsTo: aMenu for: aChange 
	self addInstallOrRevertMenuItemTo: aMenu for: aChange.
	aMenu target: self.
	(self canBrowse: aChange) ifTrue: [
		aMenu add: 'browse (b)' selector: #actionBrowse: argument: aChange].
	aMenu
		add: 'senders (n)' selector: #actionSendersOf: argument: aChange;
		add: 'implementors (m)' selector: #actionImplementorsOf: argument: aChange;
		add: 'references (N)' selector: #actionReferencesTo: argument: aChange.
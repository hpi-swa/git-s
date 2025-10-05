menu
addInstallOrRevertMenuItemTo: aMenu for: aChange
	(self activeInstallOrRevertMenuItemFor: aChange)
		caseOf: {
			[#install] -> [aMenu
							add: 'install'
							target: self
							selector: #installChange:
							argument: aChange].
			[#revert] -> [aMenu
							add: 'revert (r)'
							target: self
							selector: #revertChange:
							argument: aChange]}
		otherwise: [].
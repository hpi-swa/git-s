menu
addInstallOrRevertMenuItemTo: aMenu
	self activeInstallOrRevertMenuItem
		caseOf: {
			[#install] -> [aMenu
							add: 'install'
							target: self
							action: #actionInstall].
			[#revert] -> [aMenu
							add: 'revert (r)'
							target: self
							action: #actionRevert]}
		otherwise: [].
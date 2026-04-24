menu
addToMenu: aMenu
	aMenu
		target: self operationStarter;
		addLine;
		addItem: [:item | item contents: 'which commits to search:'].
	{
		'selected ref/branch'.					self includeActiveRef.	#toggleIncludeActiveRef.
		'current branch/commit'.				self includeHead.		#toggleIncludeHead.
		'all local branches'.					self includeBranches.	#toggleIncludeBranches.
		'all remote-tracking branches'.		self includeRemotes.	#toggleIncludeRemotes.
		'all refs (all of the above and more)'.	self includeAllRefs.	#toggleIncludeAllRefs.
		'reflogs of all included refs'.			self includeReflogs.	#toggleIncludeReflogs.
	} groupsDo: [:label :enabled :toggle |
		aMenu
			add: (GSGUIUtilities menuItem: label enabled: enabled)
			action: toggle].
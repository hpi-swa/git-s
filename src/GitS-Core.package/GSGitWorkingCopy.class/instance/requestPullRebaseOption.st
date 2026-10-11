actions-network
requestPullRebaseOption
	^ GSGUIUtilities
		title: 'Select a default pull method:'
		chooseOptionFromLabeledValues: {
			'Merge' -> 'false'.
			'Rebase' -> 'true'.
			'Interactive rebase' -> 'interactive'}
		cancelLabel: 'Cancel'
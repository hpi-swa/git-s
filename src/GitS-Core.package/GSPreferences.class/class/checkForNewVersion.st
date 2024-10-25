self-update
checkForNewVersion
	<preference: 'Regularly check for new versions of git/s'
		categoryList: #('git/s self-updating')
		description: 'Regularly check for a new version of git/s, and prompt the user to install it, if one is available.'
		type: #Boolean>
	^ CheckForNewVersion ifNil: [true]
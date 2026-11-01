self-update
keepRelativeTimeStampsUpToDate
	<preference: 'Keep relative time stamps up to date'
		categoryList: #('git/s user interface')
		description: 'When active, relative time stamps, such as in the commit list, are kept up to date (by updating them every second). Turn this off if you are experiencing performance problems.'
		type: #Boolean>
	^ KeepRelativeTimeStampsUpToDate ifNil: [true]
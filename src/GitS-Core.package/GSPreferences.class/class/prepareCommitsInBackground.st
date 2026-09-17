self-update
prepareCommitsInBackground
	<preference: 'Prepare commits in background'
		categoryList: #('git/s committing')
		description: 'When active, a change in the image causes a background task to be spawned that prepares a commit. This reduces the work needed to do when pressing the commit button, so that becomes faster.'
		type: #Boolean>
	^ PrepareCommitsInBackground ifNil: [true]
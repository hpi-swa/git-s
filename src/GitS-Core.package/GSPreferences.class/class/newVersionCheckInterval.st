self-update
newVersionCheckInterval
	<preference: 'Time interval for checking for a new version of git/s'
		categoryList: #('git/s self-updating')
		description: 'How often to check for a new version of git/s. Enter a duration in the format above or an expression that evaluates to a Duration, e. g. `3 days` or `5 minutes`, or `nil` to reset this preference to its default value.'
		type: #Duration>
	^ NewVersionCheckInterval ifNil: [1 day]
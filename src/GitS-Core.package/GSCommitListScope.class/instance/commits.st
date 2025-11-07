listing
commits
	^ ((self refs gather: [:each | self commitsForRef: each]) as: Set)
		remove: nil ifAbsent: [];
		yourself
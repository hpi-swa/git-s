accessing
computeRefsForCommits
	^ self unitOfWork allReferences
		groupBy: [:each | self unitOfWork resolveRef: each]
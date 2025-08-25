listing
commits
	^ (self refs collect: [:each | self unitOfWork objectReferenced: each] as: Set)
		remove: nil ifAbsent: [];
		yourself
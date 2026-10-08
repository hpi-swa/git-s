copying
postCopy
	super postCopy.
	cache := cache copy.
	objectsSortedBySize := objectsSortedBySize copy.
	commitsSortedByLastAccess := commitsSortedByLastAccess copy.
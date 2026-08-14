versions
conflict1ModifyBDelete
	^ (self version1: '
<<<<<<< current (click to choose, then save)
method ^ Float pi
=======
>>>>>>> incoming (click to choose, then save)' withoutLeadingBlanks)
			category: 'category'; "empty, due to successful merge"
			yourself
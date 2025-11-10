versions
conflict1ModifyBDelete
	^ (self version1: '
<<<<<<< current (click to choose)
method ^ Float pi
=======
>>>>>>> incoming (click to choose)' withoutLeadingBlanks)
			category: 'category'; "empty, due to successful merge"
			yourself
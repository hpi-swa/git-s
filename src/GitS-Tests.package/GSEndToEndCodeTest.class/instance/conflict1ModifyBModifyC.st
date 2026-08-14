versions
conflict1ModifyBModifyC
	^ self version1: '
<<<<<<< current (click to choose, then save)
method ^ Float pi
=======
method ^ -1
>>>>>>> incoming (click to choose, then save)' withoutLeadingBlanks
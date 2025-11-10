versions
conflict1ModifyBModifyC
	^ self version1: '
<<<<<<< current (click to choose)
method ^ Float pi
=======
method ^ -1
>>>>>>> incoming (click to choose)' withoutLeadingBlanks
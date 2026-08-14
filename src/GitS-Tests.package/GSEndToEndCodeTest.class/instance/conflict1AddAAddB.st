versions
conflict1AddAAddB
	^ self version1: '
<<<<<<< current (click to choose, then save)
method ^ 42
=======
method ^ Float pi
>>>>>>> incoming (click to choose, then save)' withoutLeadingBlanks
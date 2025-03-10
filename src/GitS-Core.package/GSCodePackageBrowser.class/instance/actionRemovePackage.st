actions
actionRemovePackage
	GSGUIUtilities confirmOrCancel:
		('Really remove package {1}?' format: {self selectedPackageName printString}).
	self removePackage: self selectedPackageName.
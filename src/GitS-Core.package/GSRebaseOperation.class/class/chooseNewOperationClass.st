requesting
chooseNewOperationClass
	| classes |
	classes := self compatibleOperationClasses.
	^ GSGUIUtilities
		chooseFromValues: classes
		label: #operationName
		title: 'Choose the new operation type:'
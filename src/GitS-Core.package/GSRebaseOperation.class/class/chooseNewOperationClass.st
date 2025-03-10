requesting
chooseNewOperationClass
	| classes |
	classes := self compatibleOperationClasses.
	^ GSGUIUtilities
		chooseFrom: (classes collect: #operationName)
		values: classes
		title: 'Choose the new operation type:'
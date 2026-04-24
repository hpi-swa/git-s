requesting
chooseNewCommandClass
	| classes |
	classes := self compatibleCommandClasses.
	^ GSGUIUtilities
		chooseFromValues: classes
		label: #commandName
		title: 'Choose the new command type:'
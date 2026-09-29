requesting
chooseNewCommandClass
	| classes |
	classes := self compatibleCommandClasses.
	^ GSGUIUtilities
		title: 'Choose the new command type:'
		chooseFromValues: classes
		label: #commandName
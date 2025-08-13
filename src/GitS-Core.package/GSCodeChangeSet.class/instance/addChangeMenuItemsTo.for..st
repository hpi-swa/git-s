menu
addChangeMenuItemsTo: aMenu for: aChange 
	| operation currentVersion |
	operation := aChange operation.
	operation ifNil: [^ self].
	currentVersion := (operation baseDefinition ifNil: [operation targetDefinition])
							gitSCurrentVersionIn: self mapper packageInfo.
	currentVersion = operation baseDefinition ifTrue: [
		aMenu
			add: 'install'
			target: self
			selector: #installChange:
			argument: aChange].
	currentVersion = operation targetDefinition ifTrue: [
		aMenu
			add: 'revert'
			target: self
			selector: #revertChange:
			argument: aChange].
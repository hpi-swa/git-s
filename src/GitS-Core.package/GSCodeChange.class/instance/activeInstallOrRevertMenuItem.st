menu
activeInstallOrRevertMenuItem 
	| operation currentVersion installActive revertActive |
	operation := self operation.
	operation ifNil: [^ nil].
	currentVersion := (operation baseDefinition ifNil: [operation targetDefinition])
							gitSCurrentVersionIn: self mapper packageInfo.
	installActive := currentVersion = operation baseDefinition.
	revertActive := currentVersion = operation targetDefinition.
	(installActive and: revertActive) ifTrue: [^ nil].
	installActive ifTrue: [^ #install].
	revertActive ifTrue: [^ #revert].
	^ nil
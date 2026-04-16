Autocompletion
allSelectorsForCompletionWithout: behaviorCollection
	<linterIgnoreUnsent> "called by autocompletion implementations"
	| selectors |
	selectors := IdentitySet new.
	self withAllSubclassesDo: [:each |
		(behaviorCollection includes: each) ifFalse: [
			selectors addAll: (each = self ifTrue: [self publicSelectors] ifFalse: [each selectors])]].
	^ selectors
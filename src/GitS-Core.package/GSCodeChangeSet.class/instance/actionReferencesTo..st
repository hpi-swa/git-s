actions
actionReferencesTo: aChange
	| binding |
	binding := Environment bindingOf: aChange label.
	binding ifNil: [^ self inform: 'This is not a global binding (class or global variable)'].
	self systemNavigation browseAllCallsOnClass: binding.
actions
actionReferences
	| binding |
	binding := Environment bindingOf: self label.
	binding ifNil: [^ self inform: 'This is not a global binding (class or global variable)'].
	self systemNavigation browseAllCallsOnClass: binding.
toolbuilder
buildResolveButton: aSelector state: anotherSelector with: builder
	^ builder pluggableActionButtonSpec new
		model: self changeSet;
		action: aSelector;
		label: 'Resolve to this version';
		state: anotherSelector;
		yourself
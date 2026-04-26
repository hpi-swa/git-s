toolbuilder
buildResolveButton: aSelector with: builder
	^ builder pluggableActionButtonSpec new
		model: (GSVersionChangeVersionModel new
					versionChange: self versionChange;
					versionSelector: aSelector;
					yourself);
		action: #resolveToThis;
		label: 'Resolve to this version';
		state: #isResolvedToThis;
		yourself
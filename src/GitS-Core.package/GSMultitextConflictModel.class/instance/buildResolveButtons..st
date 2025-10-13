toolbuilder
buildResolveButtons: builder
	| buttons |
	buttons := {'current' -> #current. 'incoming' -> #incoming}.
	GSPreferences showBase ifTrue: [buttons := buttons copyWithFirst: 'base' -> #base].
	^ buttons collect: [:each |
		builder pluggableActionButtonSpec new
			model: (GSVersionChangeVersionModel new
						versionChange: self versionChange;
						versionSelector: each value;
						yourself);
			action: #resolveToThis;
			label: ('Resolve to {1}' gitSFormat: {each key});
			state: #isResolvedToThis;
			yourself]
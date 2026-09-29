toolbuilder
buildResolveButtons: builder
	| buttons |
	buttons := #('current' current 'incoming' incoming).
	GSPreferences showBase ifTrue: [buttons := #('base' base), buttons].
	^ buttons pairsCollect: [:label :selector |
		builder pluggableActionButtonSpec new
			model: (GSVersionChangeVersionModel new
						versionChange: self versionChange;
						versionSelector: selector;
						yourself);
			action: #resolveToThis;
			label: ('Resolve to {1}' gitSFormat: {label});
			state: #isResolvedToThis;
			yourself]
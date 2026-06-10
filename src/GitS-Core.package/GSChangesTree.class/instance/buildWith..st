toolbuilder
buildWith: builder
	| innerSpec builtDescendants nonDelayedDescendantCount |
	builtDescendants := self buildDescendants: builder.
	nonDelayedDescendantCount := self nonDelayedDescendantCount clampHigh: builtDescendants size.
	innerSpec := (GSGUIUtilities
					buildVerticalLayout: (builtDescendants first: nonDelayedDescendantCount)
					shrinkWrap: true
					with: builder)
						spacing: self descendantsGap;
						yourself.
	^ GSDelayedBuilder
		build: (builtDescendants allButFirst: nonDelayedDescendantCount)
		into: innerSpec
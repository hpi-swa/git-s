toolbuilder
buildWith: builder
	| innerSpec builtChildren nonDelayedChildrenCount |
	builtChildren := self buildChildren: builder.
	nonDelayedChildrenCount := self nonDelayedChildrenCount clampHigh: builtChildren size.
	innerSpec := (GSGUIUtilities
					buildVerticalLayout: (builtChildren first: nonDelayedChildrenCount)
					with: builder)
						spacing: self childrenGap;
						yourself.
	^ GSDelayedBuilder
		build: (builtChildren allButFirst: nonDelayedChildrenCount)
		into: innerSpec
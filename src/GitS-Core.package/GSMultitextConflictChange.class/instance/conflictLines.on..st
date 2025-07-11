ui
conflictLines: aConflict on: aStream
	{
		self leftColor -> 
			({self withConflictTextClickHandler: (GSTextUtilities monospace: self conflictMarkerLeft), ' current (click to choose)'},
			aConflict left).
		self baseColor ->
			((GSPreferences showBase
				ifTrue: [
					{self withConflictTextClickHandler: (GSTextUtilities monospace: self conflictMarkerBase), ' base (click to choose)'},
					aConflict original]
				ifFalse: [#()]), {GSTextUtilities monospace: self conflictMarkerSeparator}).
		self rightColor ->
			(aConflict right,
			{self withConflictTextClickHandler: (GSTextUtilities monospace: self conflictMarkerRight), ' incoming (click to choose)'}).
	} do: [:each | each value do: [:line |
		aStream nextPut: (GSTextUtilities colorText: line with: each key)]].
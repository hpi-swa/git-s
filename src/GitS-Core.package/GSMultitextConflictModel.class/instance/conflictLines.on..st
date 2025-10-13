ui
conflictLines: aConflict on: aStream
	{
		self currentColor -> 
			({self withConflictTextClickHandler: (GSTextUtilities monospace: self conflictMarkerCurrent), ' current (click to choose)'},
			aConflict left).
		self baseColor ->
			((GSPreferences showBase
				ifTrue: [
					{self withConflictTextClickHandler: (GSTextUtilities monospace: self conflictMarkerBase), ' base (click to choose)'},
					aConflict original]
				ifFalse: [#()]), {GSTextUtilities monospace: self conflictMarkerSeparator}).
		self incomingColor ->
			(aConflict right,
			{self withConflictTextClickHandler: (GSTextUtilities monospace: self conflictMarkerIncoming), ' incoming (click to choose)'}).
	} do: [:each | each value do: [:line |
		aStream nextPut: (GSTextUtilities colorText: line with: each key)]].
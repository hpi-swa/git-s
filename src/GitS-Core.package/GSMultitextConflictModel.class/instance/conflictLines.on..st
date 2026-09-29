ui
conflictLines: aVersionConflict on: aStream
	{
		self currentColor.
		{self conflictMarkerLine: self conflictMarkerCurrent label: 'current'}, aVersionConflict current.
		self baseColor.
		(GSPreferences showBase
			ifTrue: [{self conflictMarkerLine: self conflictMarkerBase label: 'base'}, aVersionConflict base]
			ifFalse: [#()]),
			{GSTextUtilities monospace: self conflictMarkerSeparator}.
		self incomingColor.
		aVersionConflict incoming, {self conflictMarkerLine: self conflictMarkerIncoming label: 'incoming'}.
	} pairsDo: [:color :lines | lines do: [:line |
		aStream nextPut: (GSTextUtilities colorText: line with: color)]].
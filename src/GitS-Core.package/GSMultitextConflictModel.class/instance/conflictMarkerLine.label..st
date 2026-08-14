ui
conflictMarkerLine: markerString label: labelString
	^ self withConflictTextClickHandler:
		('{1} {2} (click to choose, then save)' asText
			format: {GSTextUtilities monospace: markerString. labelString})
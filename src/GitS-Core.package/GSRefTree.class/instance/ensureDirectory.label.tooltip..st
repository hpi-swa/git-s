adding
ensureDirectory: refString label: labelString tooltip: tooltipString
	^ (self ensureTree: refString)
		compressible: false;
		label: labelString;
		tooltip: tooltipString;
		yourself
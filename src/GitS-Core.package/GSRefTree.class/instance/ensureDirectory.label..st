adding
ensureDirectory: refString label: labelString
	^ (self ensureTree: refString)
		compressible: false;
		label: labelString;
		yourself
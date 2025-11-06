adding
ensureDirectory: refString label: labelString tooltip: tooltipString order: aNumber
	^ (self children
		detect: [:each | each isDirectory and: [each ref = refString]]
		ifNone: [self addDirectory: refString])
			label: labelString;
			tooltip: tooltipString;
			order: aNumber;
			yourself
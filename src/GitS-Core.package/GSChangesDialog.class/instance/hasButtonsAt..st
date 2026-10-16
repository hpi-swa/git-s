accessing
hasButtonsAt: aSymbol
	^ (self buttonBuilders at: aSymbol ifAbsent: [^ false]) notEmpty
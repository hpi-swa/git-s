change-log
showChangeLogText: aText
	| builder |
	builder := ToolBuilder default.
	^ builder open: (builder build: (self buildChangeLogWindowForText: aText with: builder))
toolbuilder
open
	| builder |
	builder := ToolBuilder default.
	^ builder open: (builder build: (self buildWith: builder))
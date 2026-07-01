toolbuilder
windowChildren
	| builder |
	builder := ToolBuilder default.
	^ {builder build: (self buildWindowChild: builder)}
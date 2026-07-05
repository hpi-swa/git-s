migrations
preventOpeningToolsAttachedToMouseCursorDuring: aBlock
	| original |
	original := Project uiManager openToolsAttachedToMouseCursor.
	[Project uiManager openToolsAttachedToMouseCursor: false.
	^ aBlock value]
		ensure: [Project uiManager openToolsAttachedToMouseCursor: original]
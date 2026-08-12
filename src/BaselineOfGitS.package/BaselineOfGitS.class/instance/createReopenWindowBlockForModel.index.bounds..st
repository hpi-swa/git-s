migrations
createReopenWindowBlockForModel: anObject index: anInteger bounds: aRectangle
	^ [ | newWindow |
			newWindow := self preventOpeningToolsAttachedToMouseCursorDuring: [anObject open].
			newWindow setIndexInOwner: anInteger.
			newWindow bounds: aRectangle]
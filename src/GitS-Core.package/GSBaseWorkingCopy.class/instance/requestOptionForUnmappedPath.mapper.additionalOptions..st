paths
requestOptionForUnmappedPath: aPath mapper: mapper additionalOptions: aCollection
	| options |
	options := {'Choose a different path' -> [#different]} asOrderedCollection.
	mapper canBeRemovedAtAll ifTrue: [
		options addLast: 'Overwrite this path' -> [#overwrite]].
	options addAllLast: aCollection.
	^ GSGUIUtilities
		chooseOptionFromLabeledBlocks: options
		title: ('The path {1} is already taken.'
				format: {(GSPathUtilities asString: aPath) printString})
		cancelLabel: 'Cancel the operation'
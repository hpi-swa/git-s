paths
requestOptionForUnmappedPath: aPath mapper: mapper additionalOptions: aCollection
	<linterIgnoreSends: #(different overwrite)>
	| options |
	options := {'Choose a different path' -> [#different]} asOrderedCollection.
	mapper canBeRemovedAtAll ifTrue: [
		options addLast: 'Overwrite this path' -> [#overwrite]].
	options addAllLast: aCollection.
	^ GSGUIUtilities
		title: ('The path {1} is already taken.'
				format: {(GSPathUtilities asString: aPath) printString})
		chooseOptionFromLabeledBlocks: options
		cancelLabel: 'Cancel the operation'
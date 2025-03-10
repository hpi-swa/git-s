image-hash
handleMovedImageFrom: oldHash to: newHash
	| doMove |
	doMove := [GSGUIUtilities
					chooseOptionFromLabeledValues: {'I copied it.' -> false. 'I moved it.' -> true}
					title:
						'The image is not where it used to be.
						Did you move or copy it? If in doubt, choose copy.'
							withoutLineEndings withBlanksCondensed]
					on: [GSOperationCanceledException] do: [false].
	self allInstancesDo: [:each | each withUnitOfWork: [
		each handleMovedImageFrom: oldHash to: newHash doMove: doMove]].
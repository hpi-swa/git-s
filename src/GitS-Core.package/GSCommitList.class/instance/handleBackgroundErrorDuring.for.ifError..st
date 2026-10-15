generating
handleBackgroundErrorDuring: runBlock for: aGenerator ifError: handlerBlock
	^ runBlock on: Error do: [:error |
		Project current addDeferredUIMessage: [
			self generator = aGenerator ifTrue: [
				self
					addError: ('{1} (click to debug)' format: {error})
					onClick: runBlock]].
		handlerBlock value]
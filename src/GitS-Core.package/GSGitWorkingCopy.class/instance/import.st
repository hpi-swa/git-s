importing
import
	self checkForMissingHead.
	self headCommit ifNotNil: [
		(self confirm: 'Do you want to load the current commit into the image?') ifTrue: [
			self actionMaterializeHead]].
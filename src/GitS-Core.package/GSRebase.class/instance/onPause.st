running
onPause
	self operation materializePendingChanges. "the user intends make edits in the image"
	self ensureOpened.
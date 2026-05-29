image-hash
imageHash
	| hash lastHash |
	hash := self basicImageHash.
	lastHash := self lastImageHash.
	hash ~= lastHash ifTrue: [
		self handleMovedImageFrom: lastHash to: hash].
	^ hash
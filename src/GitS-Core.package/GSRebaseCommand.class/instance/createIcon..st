icon
createIcon: aBlock
	| form |
	form := Form extent: 64 asPoint depth: Display depth.
	aBlock value: form getCanvas.
	^ form
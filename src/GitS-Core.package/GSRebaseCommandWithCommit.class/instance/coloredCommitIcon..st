icon
coloredCommitIcon: aColor
	^ self createIcon: [:canvas |
		canvas drawImage: self commitIcon at: 0 @ 0.
		canvas form floodFill: aColor at: canvas clipRect center]
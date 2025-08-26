accessing
resolution: anAssetFile
	resolution := anAssetFile.
	self
		markAsEdited;
		changed: #resolution;
		changed: #isRemoval.
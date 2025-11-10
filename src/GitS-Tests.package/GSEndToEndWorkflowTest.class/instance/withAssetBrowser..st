assets
withAssetBrowser: aBlock
	self
		rightClick: self projectName;
		leftClick: 'Manage its assets';
		do: aBlock;
		closeWindowContaining: 'Git Asset Browser'.
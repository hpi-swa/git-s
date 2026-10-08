assets
installAsset: anEndToEndAssetTestVersion
	self assetAt: anEndToEndAssetTestVersion path do: [
		self
			leftClick: '"Edit the asset by entering and saving code here. *"';
			sendControl: $a;
			sendKeystroke: Character backspace;
			type: anEndToEndAssetTestVersion expression;
			sendControl: $s].
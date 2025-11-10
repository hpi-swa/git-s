data
current: currentEndToEndAssetTestVersion incoming: incomingEndToEndAssetTestVersion
	^ Dictionary newFrom: {
		'Current:' -> currentEndToEndAssetTestVersion.
		'Incoming:' -> incomingEndToEndAssetTestVersion}
data
old: oldEndToEndAssetTestVersion new: newEndToEndAssetTestVersion
	^ Dictionary newFrom: {
		oldEndToEndAssetTestVersion path, String cr, 'Old:' -> oldEndToEndAssetTestVersion.
		'New:' -> newEndToEndAssetTestVersion}
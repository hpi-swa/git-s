requests
requestMapperClass
	^ GSGUIUtilities
		title: 'Asset type:'
		chooseFromValues: self assetMapperClasses
		label: #kind
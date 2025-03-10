requests
requestMapperClass
	^ GSGUIUtilities
		chooseFromValues: self assetMapperClasses
		label: #kind
		title: 'Asset type:'
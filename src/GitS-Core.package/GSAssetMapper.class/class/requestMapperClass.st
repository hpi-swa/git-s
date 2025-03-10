requests
requestMapperClass
	| classes |
	classes := self assetMapperClasses.
	^ GSGUIUtilities
		chooseFrom: (classes collect: #kind)
		values: classes
		title: 'Asset type:'
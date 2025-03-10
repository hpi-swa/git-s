actions
actionAdd
	| workingCopy mapperClass path mapper |
	workingCopy := self activeWorkingCopyOrCancel.
	mapperClass := GSAssetMapper requestMapperClass.
	path := (self
				requestPathWithSuffix: (self defaultFileNameFor: mapperClass)
				title: 'Path of the asset in the repository:').
	mapper := mapperClass new
					path: path;
					yourself.
	workingCopy addMapper: mapper.
migrations
moveAssetMappersToAbsolutePaths
	<postLoadMigration: 12>
	GSBaseWorkingCopy allSubInstancesDo: [:workingCopy |
		(workingCopy mappersOfKind: GSAssetMapper) do: [:mapper |
			mapper path isAbsolute ifFalse: [
				"can't have any collisions, since the collision check doesn't check for absolute/relative"
				mapper uncheckedMoveTo: (GSPathUtilities toAbsolutePath: mapper path) in: workingCopy]]].
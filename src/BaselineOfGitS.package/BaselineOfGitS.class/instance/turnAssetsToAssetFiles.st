migrations
turnAssetsToAssetFiles
	<postLoadMigration: 20>
	GSBaseWorkingCopy allSubInstancesDo: [:workingCopy |
		(workingCopy mappersOfKind: GSAssetMapper) do: [:mapper | | asset assetFile |
			asset := mapper loadAssetFileFromImage: workingCopy.
			assetFile := self turnAsset: asset toAssetFileWith: mapper.
			mapper materialize: assetFile in: workingCopy]].
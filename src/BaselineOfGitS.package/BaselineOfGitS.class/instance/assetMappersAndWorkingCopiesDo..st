migrations
assetMappersAndWorkingCopiesDo: aBlock
	GSBaseWorkingCopy allSubInstancesDo: [:workingCopy |
		(workingCopy mappersOfKind: GSAssetMapper) do: [:mapper |
			aBlock value: mapper value: workingCopy]].
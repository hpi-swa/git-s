sar
serializeAssetFiles: aCollection toSar: aSarBuilder on: aStream
	aStream nextPutAll: ('({1} newWithNameAndRegister: {2}) in: [:workingCopy |' gitSFormat: {
							GSBaseWorkingCopy name.
							aSarBuilder workingCopy name storeString}).
	aCollection
		do: [:each | aStream cr; tab; nextPutAll:
			('{1} in: [:assetFile |
				workingCopy addMapper: assetFile mapper.
				assetFile mapper materialize: assetFile in: workingCopy]'
					gitSFormat: {each mapper serializeAssetFile: each toSar: aSarBuilder})]
		separatedBy: [aStream nextPut: $.].
	aStream nextPutAll: '].'.
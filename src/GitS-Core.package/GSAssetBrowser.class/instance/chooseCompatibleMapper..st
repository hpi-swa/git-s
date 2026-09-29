importing
chooseCompatibleMapper: aReference
	^ aReference readStreamDo: [:stream |
		GSAssetMapper chooseCompatibleMapper: stream ifAmbiguous: [:mappers |
			GSGUIUtilities
				title: ('As which type of asset should {1} be imported?' format: {aReference})
				chooseFromValues: mappers
				label: #printDescriptionStringWithoutPath]]
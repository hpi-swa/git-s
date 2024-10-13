ignored-sends
ignoredSendsForLegacyMetadataLoading
	^ {
		#legacySquotClassMappings -> #(SquotTrackedObjectMetadata).
		#loadMapperFromLegacySquotContentsReference:fallbackSerializer: -> #(SquotTonelSerializer SquotCypressCodeSerializer).
		#loadLegacySerializerNameFromSquotContentsReference: -> #(serializer).
		#legacySquotClassName: -> #(GS Squot).
	} gather: [:each | each value collect: [:symbol | GSMetadataMapper>>each key -> symbol]]
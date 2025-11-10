metadata-loading-legacy
legacySquotClassMappings
	<ignoreSends: #(SquotTrackedObjectMetadata)>
	^ Dictionary newFrom: {
		#SquotTrackedObjectMetadata -> Dictionary.
	}, ((GSMapper withAllSubclasses copyWith: GSMetadata)
		collect: [:each | self legacySquotClassMapping: each])
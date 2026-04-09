metadata-loading-legacy
legacySquotClassMappings
	<linterIgnoreSends: #(SquotTrackedObjectMetadata)>
	^ Dictionary newFrom: {
		#SquotTrackedObjectMetadata -> Dictionary.
	}, ((GSMapper withAllSubclasses copyWith: GSMetadata)
		collect: [:each | self legacySquotClassMapping: each])
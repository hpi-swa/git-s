accessing
addChangedMappers: aCollection class: aMetadataMappersChangeClass
	self changes addAll: ((aCollection select: #isTracked) collect: [:each |
		aMetadataMappersChangeClass new
			changeSet: self;
			changedMapper: each;
			yourself]).
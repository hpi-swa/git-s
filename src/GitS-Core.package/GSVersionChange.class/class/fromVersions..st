instance creation
fromVersions: aCollection
	self assert: aCollection size = self numberOfVersions.
	^ self current: aCollection first incoming: aCollection second
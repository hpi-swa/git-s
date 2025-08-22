building
buildSar
	GSGUIUtilities displayStatus: 'Building .sar' during: [ | remaining |
		remaining := self mappers.
		GSMapper withAllSubclassesDo: [:each |
			remaining := each batchAdd: remaining toSar: self].
		remaining
			do: [:each | each addToSar: self]
			displayingProgress: [:each | 'Adding {1}' format: {each name}]].
	self
		addString: (self fixupChunkTerminatorsIn: self preamble)
		at: 'install/preamble'.
	^ self zip
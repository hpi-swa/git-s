instance creation
all: anObject
	^ self fromVersions: (Array new: self numberOfVersions withAll: anObject)
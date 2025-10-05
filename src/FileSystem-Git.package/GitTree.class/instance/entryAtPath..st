public-accessing
entryAtPath: aPath
	| entry parent |
	aPath isRoot ifTrue: [^ GitOwningTreeEntry directory: self named: '' in: self repository].
	parent := self.
	aPath parent do: [:segment |
		entry := parent entryAt: segment ifAbsent: [^ nil].
		entry isInDirectoryMode ifFalse: [^ nil].
		parent := entry object].
	^ parent entryAt: aPath basename ifAbsent: [nil]
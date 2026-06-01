migrations
preventImageCommitCreationDuringUpdatePreLoadPhase
	<preLoadMigrationAlways: 1>
	| imageCommitCacheClass |
	imageCommitCacheClass := Smalltalk at: #GSImageCommitCache ifAbsent: [
		"ensure the class exists (we don't care about the shape here)
		to allow setting the CreationBatchLevel before the class's creation"
		Object subclass: #GSImageCommitCache
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: 'GitS-Core'].
	(imageCommitCacheClass classVarNames includes: 'CreationBatchLevel')
		ifFalse: [imageCommitCacheClass addClassVarName: 'CreationBatchLevel'].
	imageCommitCacheClass classPool at: #CreationBatchLevel put: 1.
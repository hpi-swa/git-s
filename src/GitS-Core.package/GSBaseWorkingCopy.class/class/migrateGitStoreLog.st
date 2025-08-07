migrations
migrateGitStoreLog
	| messages |
	messages := GitStore classPool at: #LogMessages.
	messages ifNil: [^ self].
	(messages isKindOf: OrderedCollection) ifTrue: [^ self].
	GitStore classPool at: #LogMessages put: messages asOrderedCollection.
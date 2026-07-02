migrations
registerCodeMapperSubInstances
	<postLoadMigration: 17>
	GSCodeMapper allSubInstancesDo: [:each | GSCodeMapper cachedAllSubInstances add: each].
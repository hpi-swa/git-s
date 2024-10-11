migrations
importLegacyGitStandaloneAssetLoaderInstances
	self
		importProjectsFromLegacyClass: #GitNamedAssetLoader
		getInstances: [:class | class registry values select: [:each | each class name = 'GitStandaloneAssetLoader']]
		getName: #name
		do: [:each | | workingCopy |
			workingCopy := GSBaseWorkingCopy newWithNameAndRegister: each name.
			workingCopy materialized: each assets.
			each assets keysAndValuesDo: [:path :asset |
				(self importMapperFromLegacyAsset: asset at: path)
					ifNotNil: [:mapper | workingCopy addMapper: mapper]
					ifNil: [workingCopy materializedAt: path put: nil]].
			workingCopy doPostUpdateMigrations].
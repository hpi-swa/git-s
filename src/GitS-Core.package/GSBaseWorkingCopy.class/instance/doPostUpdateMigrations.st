migrations
doPostUpdateMigrations
	self allMappers
		do: [:each | each doPostUpdateMigrationsIn: self]
		displayingProgress: [:each | 'Migrating {1}' format: {each}].
	self mappers do: [:each | each addDependent: self].
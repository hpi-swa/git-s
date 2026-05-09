pre-load
migratePlaintextInstances
	| plaintexts strings |
	plaintexts := (Smalltalk at: #GSPlaintext ifAbsent: [^ self]) allSubInstances asArray.
	strings := plaintexts collect: [:each | String newFrom: each] as: Array.
	plaintexts elementsForwardIdentityAndHashTo: strings.
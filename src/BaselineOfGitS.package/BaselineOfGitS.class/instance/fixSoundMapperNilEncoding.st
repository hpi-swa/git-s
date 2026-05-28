migrations
fixSoundMapperNilEncoding
	<postLoadMigration: 11>
	GSSoundMapper allSubInstancesDo: [:mapper | | extension |
		extension := mapper path extension asLowercase.
		mapper encoding:
			(mapper class validEncodings
				detect: [:each | each asLowercase = extension]
				ifNone: [mapper class defaultEncoding])].
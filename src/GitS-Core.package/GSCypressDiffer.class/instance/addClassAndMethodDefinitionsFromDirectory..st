accessing
addClassAndMethodDefinitionsFromDirectory: aDirectory
	super addClassAndMethodDefinitionsFromDirectory:
		(GSFilteredDirectory on: aDirectory select: [:entry | self differs: entry])
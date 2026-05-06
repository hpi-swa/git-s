accessing
packageDirectory
	^ GSFilteredDirectory on: super packageDirectory select: [:each | self differs: each]
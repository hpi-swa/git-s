migrations
restructureAssetFilesPreLoadPhase
	"necessary because the old GSAssetFile was renamed to GSPresentAssetFile and an abstract subclass GSAssetFile was added,
	thus without this rename, an update causes all existing instances to lose their data"
	| oldClass |
	<preLoadMigration: 3>
	oldClass := Smalltalk at: #GSAssetFile ifAbsent: [^ self].
	Smalltalk at: #GSPresentAssetFile ifPresent: [^ self]. "already renamed"
	(Smalltalk at: #GitSOldAssetFilesToContents ifAbsentPut: [IdentityDictionary new])
		addAll: (oldClass allInstances collect: [:each | each -> each contents])
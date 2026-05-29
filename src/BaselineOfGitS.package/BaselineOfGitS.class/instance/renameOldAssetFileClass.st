pre-load
renameOldAssetFileClass
	"necessary because the old GSAssetFile was renamed to GSLoadedAssetFile and an abstract subclass GSAssetFile was added,
	thus without this rename, an update causes all existing instances to lose their data"
	| oldClass |
	oldClass := Smalltalk at: #GSAssetFile ifAbsent: [^ self].
	Smalltalk at: #GSLoadedAssetFile ifPresent: [^ self]. "already renamed"
	oldClass rename: #GSLoadedAssetFile.
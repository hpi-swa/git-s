migrations
restructureAssetFilesPostLoadPhase
	"necessary because the old GSAssetFile was renamed to GSPresentAssetFile and an abstract subclass GSAssetFile was added,
	thus without this rename, an update causes all existing instances to lose their data"
	| newInstances oldInstances oldInstancesToContents |
	<postLoadMigration: 15>
	oldInstancesToContents := Smalltalk removeKey: #GitSOldAssetFilesToContents ifAbsent: [^ self].
	oldInstances := oldInstancesToContents keys asArray.
	newInstances := oldInstances collect: [:each |
		(GSPresentAssetFile withMapper: each mapper contents: (oldInstancesToContents at: each))].
	oldInstances elementsForwardIdentityAndHashTo: newInstances.
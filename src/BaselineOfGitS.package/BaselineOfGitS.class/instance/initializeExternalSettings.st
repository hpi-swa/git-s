migrations
initializeExternalSettings
	"have git-s find the prefs/gitSUser file immediately, not only after reopening the image"
	<postLoadMigration: 22>
	ExternalSettings preferenceDirectory ifNotNil: [:directory |
		GSExternalSettings fetchExternalSettingsIn: directory].
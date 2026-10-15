change-log
actionPreviewChangeLogForLatestVersion
	| latestVersion |
	latestVersion := self latestVersionIfError: [GSGUIUtilities informAndCancel: 'Unable to check for a new version.'].
	latestVersion = self installedVersion ifTrue: [GSGUIUtilities informAndCancel: 'No new version is available'].
	self previewChangeLogFor: latestVersion.
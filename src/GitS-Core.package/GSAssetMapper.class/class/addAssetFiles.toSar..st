sar
addAssetFiles: aCollection toSar: aSarBuilder
	aCollection ifEmpty: [^ self].
	GSGUIUtilities displayStatus: 'Adding assets' during: [
		aSarBuilder
			addPreambleLine: GSSelfUpdater installScriptForInstalledVersion gitSFormat;
			addPreambleLine: (String streamContents: [:stream |
				self serializeAssetFiles: aCollection toSar: aSarBuilder on: stream])].
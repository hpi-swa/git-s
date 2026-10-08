tests
testNew
	(Preferences pragmaPreferenceFor: GSPreferences getter: #prepareCommitsInBackground)
		preferenceValue: false during: [super testNew].
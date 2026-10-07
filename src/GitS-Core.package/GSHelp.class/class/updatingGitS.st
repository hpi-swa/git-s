pages
updatingGitS
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #updatingGitS"
	<generated>
	^(HelpTopic
		title: 'Updating git/s'
		contents: 
'git/s is able to update itself. To do so, click the More button and select Self-update. This will check for a new version of git/s and, if one is available, install it.

There two development branches of git/s: latest-release and main. main contains the most up-to-date version of git/s, but may be somewhat unstable. latest-release receives updates less frequently, but should be stable. latest-release is the default branch for self-updates, but you can change the branch to use: click the More button and select Set self-update branch.

By default, git/s will also regularly check for new versions automatically. This can be configured or turned off in the preferences.!
]style[(52 4 19 11 406 4 19 22 91 10 4 10 20),i,,i,,i,,i,,Rcode://(Preferences pragmaPreferenceFor: GSPreferences getter: #newVersionCheckInterval) open;,,Rcode://(Preferences pragmaPreferenceFor: GSPreferences getter: #checkForNewVersion) open;,!' readStream nextChunkText)
			key: #updatingGitS;
			shouldStyle: false;
			yourself
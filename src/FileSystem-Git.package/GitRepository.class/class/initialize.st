class initialization
initialize
	"GitRepository initialize"
	ConfigDefaults := Dictionary new.
	ConfigDefaults
		at: 'i18n.commitEncoding' put: 'utf-8';
		at: 'pull.rebase' put: 'false'.
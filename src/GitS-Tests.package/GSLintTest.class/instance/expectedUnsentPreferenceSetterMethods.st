expected-unsent
expectedUnsentPreferenceSetterMethods
	"hidden sends: asSimpleSetter is used in Preferences class>>addPragmaPreference:"
	^ {
		#showBase:.
		#checkForNewVersion:.
	} collect: [:each | GSPreferences class >> each]
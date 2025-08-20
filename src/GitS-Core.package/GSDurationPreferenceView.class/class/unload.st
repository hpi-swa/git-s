class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[(PreferenceViewRegistry forType: self type) unregister: self] on: Error do:[]
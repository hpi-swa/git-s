navigation
open
	| window |
	window := HelpBrowser openOn: self asHelpTopic.
	window model showFirstTopic.
	^ window
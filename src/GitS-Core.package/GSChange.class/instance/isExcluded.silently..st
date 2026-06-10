accessing
isExcluded: excludedBoolean silently: silentBoolean
	self
		basicIsExcluded: excludedBoolean;
		"Using a regular update here would necessitate this dependency graph:
			         (for isExcludedSilently:)
			self ------------------------------------> MetadataMappersChange
			  | (for isExcluded)                                       | (for isExcluded; inherited)
			  `---------------->  dialog <------------------------´
		Thus, an GSGUIUtilities>>allOf:changed: (used by GSChangesTree)
		cannot prevent multiple updates of the dialog (without more complicated
		and intrusive logic).
		Instead, use an event, which does not have this problem."
		triggerEvent: #isExcludedChangedSilently: with: silentBoolean.
	silentBoolean ifFalse: [self changed: #isExcluded].
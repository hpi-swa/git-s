private
setPreferencesDuring: aBlock
	^ (Preferences pragmaPreferenceFor: UIManager getter: #openToolsAttachedToMouseCursor)
		preferenceValue: false
		during: [(Preferences pragmaPreferenceFor: GSPreferences getter: #showBase)
					preferenceValue: false
					during: aBlock]
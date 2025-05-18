private
setPreferencesDuring: aBlock
	^ (Preferences pragmaPreferenceFor: UIManager getter: #openToolsAttachedToMouseCursor)
		preferenceValue: false during: aBlock
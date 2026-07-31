private
setPreferencesDuring: aBlock
	^ (Preferences pragmaPreferenceFor: UIManager getter: #openToolsAttachedToMouseCursor)
		preferenceValue: false
		during: [(Preferences pragmaPreferenceFor: GSPreferences getter: #showBase)
					preferenceValue: false
					during: [Smalltalk
								at: #ECPreferences
								ifPresent: [:ecPreferences |
									(Preferences pragmaPreferenceFor: ecPreferences getter: #enabled)
										preferenceValue: false
										during: aBlock]
								ifAbsent: [aBlock value]]]
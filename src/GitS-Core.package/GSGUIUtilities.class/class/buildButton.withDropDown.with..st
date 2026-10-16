toolbuilder
buildButton: buttonSpec withDropDown: dropdownSpec with: builder
	^ self
		buildRefreshablePanel: [
			self
				buildButtons: {buttonSpec. dropdownSpec}
				spacing: -2 * (self userInterfaceTheme get: #borderWidth for: PluggableButtonMorph)
				with: builder]
		on: #userInterfaceTheme
		with: builder
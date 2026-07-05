toolbuilder
buildButton: buttonSpec withDropDown: dropdownSpec with: builder
	^ (self buildButtons: {buttonSpec. dropdownSpec} with: builder)
		spacing: -2 * (self userInterfaceTheme get: #borderWidth for: PluggableButtonMorph);
		yourself
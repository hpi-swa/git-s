toolbuilder
buildDropDown: aBlock with: builder
	^ (self
		buildRefreshablePanel: [
			aBlock value: (builder pluggableButtonSpec new
								label: self dropDownButtonLabel;
								horizontalResizing: #shrinkWrap;
								yourself)]
		on: #userInterfaceTheme
		with: builder)
			horizontalResizing: #shrinkWrap;
			yourself
toolbuilder
buildDropDownWith: builder
	^ builder pluggableButtonSpec new
		label: (GSTextUtilities formAsText: self dropDownButtonIcon);
		horizontalResizing: #shrinkWrap;
		yourself
toolbuilder
buildButton: aString action: aBlock color: aColor with: builder
	^ builder pluggableActionButtonSpec new
		model: aBlock;
		action: #value;
		label: aString;
		color: aColor;
		yourself
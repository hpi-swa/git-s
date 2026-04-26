toolbuilder
buildVerticalLayout: aCollection shrinkWrap: aBoolean with: builder
	| spec |
	spec := self buildVerticalLayout: aCollection with: builder.
	aBoolean ifTrue: [spec verticalResizing: #shrinkWrap].
	^ spec
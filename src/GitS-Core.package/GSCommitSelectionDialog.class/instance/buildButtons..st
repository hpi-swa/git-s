toolbuilder
buildButtons: builder
	^ {
		self buildSelectButton: builder.
		self buildCancelButton: builder.
	}
toolbuilder
buildButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildCommitButton: builder.
		self buildPullButton: builder.
		self buildPushButton: builder.
		self buildBranchButton: builder.
		self buildOtherButton: builder.
	} with: builder
toolbuilder
buildButtons: builder
	^ GSGUIUtilities buildButtons: {
		self buildCommitDropDownButton: builder.
		self buildPullButton: builder.
		self buildPushDropDownButton: builder.
		self buildBranchButton: builder.
		self buildMoreButton: builder.
	} with: builder
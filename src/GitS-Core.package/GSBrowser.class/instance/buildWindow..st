toolbuilder
buildWindow: builder
	^ builder pluggableWindowSpec new
		model: self operationStarter;
		label: #windowTitle;
		children: #windowChildren;
		yourself
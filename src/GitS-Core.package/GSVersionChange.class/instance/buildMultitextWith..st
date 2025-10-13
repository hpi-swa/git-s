toolbuilder
buildMultitextWith: builder
	^ (self multitextModelClass new
		versionChange: self;
		yourself) buildWith: builder
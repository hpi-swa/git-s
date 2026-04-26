toolbuilder
buildMultitextWith: builder shrinkWrap: aBoolean
	^ (self multitextModelClass new
		versionChange: self;
		yourself) buildWith: builder shrinkWrap: aBoolean
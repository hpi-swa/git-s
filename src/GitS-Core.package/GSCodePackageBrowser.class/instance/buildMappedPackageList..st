toolbuilder
buildMappedPackageList: builder
	^ builder pluggableListSpec new
		model: self operationLifecycle;
		list: #mappedPackageList;
		getSelected: #selectedPackageName;
		setSelected: #selectedPackageName:;
		yourself
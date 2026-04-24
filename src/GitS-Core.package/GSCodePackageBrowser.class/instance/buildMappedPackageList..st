toolbuilder
buildMappedPackageList: builder
	^ builder pluggableListSpec new
		model: self operationStarter;
		list: #mappedPackageList;
		getSelected: #selectedPackageName;
		setSelected: #selectedPackageName:;
		yourself
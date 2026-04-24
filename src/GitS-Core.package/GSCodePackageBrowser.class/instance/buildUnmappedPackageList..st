toolbuilder
buildUnmappedPackageList: builder
	^ builder pluggableListSpec new
		model: self operationStarter;
		list: #unmappedPackageList;
		getSelected: #selectedPackageName;
		setSelected: #selectedPackageName:;
		yourself
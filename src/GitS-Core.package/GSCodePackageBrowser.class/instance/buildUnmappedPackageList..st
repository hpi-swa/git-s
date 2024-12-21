toolbuilder
buildUnmappedPackageList: builder
	^ builder pluggableListSpec new
		model: self operationLifecycle;
		list: #unmappedPackageList;
		getSelected: #selectedPackageName;
		setSelected: #selectedPackageName:;
		yourself
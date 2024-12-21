toolbuilder
buildAddPackageButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionAddPackage;
		enabled: #isSelectedPackageUnmapped;
		label: 'Add package';
		yourself
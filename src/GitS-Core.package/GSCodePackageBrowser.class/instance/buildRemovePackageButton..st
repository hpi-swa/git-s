toolbuilder
buildRemovePackageButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionRemovePackage;
		enabled: #isSelectedPackageMapped;
		label: 'Remove package';
		yourself
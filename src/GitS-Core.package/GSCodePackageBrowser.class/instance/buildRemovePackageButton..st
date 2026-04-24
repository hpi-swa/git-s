toolbuilder
buildRemovePackageButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionRemovePackage;
		enabled: #isSelectedPackageMapped;
		label: 'Remove package';
		yourself
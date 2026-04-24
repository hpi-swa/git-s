toolbuilder
buildAddPackageButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionAddPackage;
		enabled: #isSelectedPackageUnmapped;
		label: 'Add package';
		yourself
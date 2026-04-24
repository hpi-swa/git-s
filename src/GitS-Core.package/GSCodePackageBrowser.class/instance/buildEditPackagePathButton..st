toolbuilder
buildEditPackagePathButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionEditPackagePath;
		enabled: #isSelectedPackageMapped;
		label: 'Edit package path';
		help: 'Edit the path where the package is stored within the repository.';
		yourself
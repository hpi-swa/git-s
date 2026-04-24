toolbuilder
buildChangeEncodingButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionChangeEncoding;
		enabled: #isSelectedPackageMapped;
		label: 'Change package encoding';
		help: 'Change which encoding is used to serialize the package to the repository.';
		yourself
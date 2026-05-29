toolbuilder
buildAssetFile: anAssetFile with: builder
	^ builder pluggableScrollPaneSpec new	
		morph: anAssetFile asMorph;
		padding: 5 px;
		minimumExtent: 100 @ 100;
		yourself
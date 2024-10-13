expected-unsent
expectedUnsentGitAssetLoaderMethods
	^ (#(loadAnimatedImageMorph: loadAnimation: loadImageMorph: loadByteArray: loadString: assetPaths)
		collect: [:selector | GitAssetLoader>>selector])
		copyWith: GitAssetLoader class>>#for:basePath:
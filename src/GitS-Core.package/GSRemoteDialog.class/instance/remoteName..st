accessing
remoteName: aStringOrText
	(aStringOrText includes: Character tab) ifTrue: [
		^ self
			changed: #inputRequested with: #remoteUrl;
			changed: #remoteName].
	remoteName := aStringOrText asString.
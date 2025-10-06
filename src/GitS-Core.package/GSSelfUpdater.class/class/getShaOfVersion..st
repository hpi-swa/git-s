requests
getShaOfVersion: aString
	| response json |
	response := WebClient new
		httpGet: (self githubApiUrlForVersion: aString)
		do: [:request |
			(self environment classNamed: #SmalltalkCI) ifNotNil: [:sci |
				| token |
				token := sci getEnv: 'GITHUB_TOKEN'.
				token isEmptyOrNil ifFalse:
					[request headerAt: 'Authorization' put: 'token ' , token]]].
	json := response content parseAsJson.
	response code = 200 ifFalse: [
		^ self error: ('Error while trying to resolve git-s version {1}: {2}'
						format: {aString printString. json at: 'message'})].
	^ json at: 'sha'

requests
getShaOfVersion: aString
	| response json |
	response := WebClient httpGet: (self githubApiUrlForVersion: aString).
	json := response content parseAsJson.
	response code = 200 ifFalse: [
		^ self error: ('Error while trying to resolve git-s version {1}: {2}'
						format: {aString printString. json at: 'message'})].
	^ json at: 'sha'
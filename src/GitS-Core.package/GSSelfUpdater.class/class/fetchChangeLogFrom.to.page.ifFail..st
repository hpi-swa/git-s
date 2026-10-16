change-log
fetchChangeLogFrom: oldHexHashString to: newHexHashString page: aNumber ifFail: aBlock
	| response |
	response := WebClient new
		httpGet: ('{1}/compare/{2}...{3}?per_page=100&page={4}'
					format: {self githubApiRepositoryUrl. oldHexHashString. newHexHashString. aNumber}).
	response isSuccess ifFalse: [^ aBlock value].
	^ (response content parseAsJson at: 'commits') collect: [:each | GSChangeLogItem fromJson: each]
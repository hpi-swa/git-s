change-log
fetchChangeLogFrom: oldHexHashString to: newHexHashString page: aNumber ifFail: aBlock
	| response |
	response := WebClient new
		httpGet: ('https://api.github.com/repos/hpi-swa/git-s/compare/{1}...{2}?per_page=100&page={3}'
					format: {oldHexHashString. newHexHashString. aNumber}).
	response isSuccess ifFalse: [^ aBlock value].
	^ (response content parseAsJson at: 'commits') collect: [:each | GSChangeLogItem fromJson: each]
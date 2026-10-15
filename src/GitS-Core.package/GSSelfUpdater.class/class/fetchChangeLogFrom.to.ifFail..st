change-log
fetchChangeLogFrom: oldHexHashString to: newHexHashString ifFail: aBlock
	^ OrderedCollection streamContents: [:stream |
		GSGUIUtilities displayStatus: 'Fetching commits from github' during: [
			self
				fetchChangeLogFrom: oldHexHashString
				to: newHexHashString
				on: stream
				ifFail: aBlock]]
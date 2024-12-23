upstream
checkSetUpstreamForCreatedBranch: aString to: anotherString
	(self isRemoteRef: anotherString) ifFalse: [^ self].
	(self confirm:
		('You created a branch {1} from the remote-tracking branch {2}. ',
		'Do you want to set the upstream branch of {1} to {2}?'
			format: ({aString printString. anotherString printString} collect: [:each | GitReference shortName: each])))
		ifFalse: [^ self].
	self
		setUpstreamRemoteNameAndRef: (self splitRemoteRef: anotherString)
		for: aString.
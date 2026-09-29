accessing
reflog
	^ reflog ifNil: [self reflog: self createReflog. reflog]
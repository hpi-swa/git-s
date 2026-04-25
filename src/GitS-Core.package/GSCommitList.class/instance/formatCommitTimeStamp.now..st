ui
formatCommitTimeStamp: commitTimeStamp now: nowTimeStamp
	^ Time
		humanWordsForSecondsAgo: (nowTimeStamp - commitTimeStamp) asSeconds
		from: nowTimeStamp
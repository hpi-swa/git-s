time-stamp
formatTimeStamp: itemTimeStamp now: nowTimeStamp
	^ Time
		humanWordsForSecondsAgo: (nowTimeStamp - itemTimeStamp) asSeconds
		from: nowTimeStamp
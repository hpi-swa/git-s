accessing
computeHexHash
	^ (GitBlob bytes: self contents in: nil) hexHash
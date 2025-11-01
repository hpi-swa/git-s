private
postToReceivePack: aByteArray
	^ self handleConnectionClosedDuring: [
		self client
			httpPost: (self urlForService: 'git-receive-pack')
			content: aByteArray
			type: 'application/x-git-receive-pack-request']
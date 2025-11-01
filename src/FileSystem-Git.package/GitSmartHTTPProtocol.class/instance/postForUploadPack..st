private
postForUploadPack: contents
	^ self handleConnectionClosedDuring: [
		self client
			httpPost: (self urlForService: 'git-upload-pack')
			content: contents readStream
			type: 'application/x-git-upload-pack-request']
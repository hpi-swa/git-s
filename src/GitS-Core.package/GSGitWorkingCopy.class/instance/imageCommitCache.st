image-commit
imageCommitCache
	^ imageCommitCache ifNil: [imageCommitCache := self createImageCommitCache]
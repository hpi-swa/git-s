actions-private
openDialogWithAction: aBlock doing: anotherBlock
	^ self openDialogDoing: [self dialog addButton: self actionLabel action: aBlock. anotherBlock value]
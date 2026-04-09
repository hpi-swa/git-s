updating
updateWhen: valueBlock changesBetween: fromTimeStamp and: toTimeStamp
	(GSCommitWrapperTimeStampUpdater for: 
		((self
			findFirstChangeOf: valueBlock
			between: fromTimeStamp
			and: toTimeStamp) ifNil: [^ self]))
		add: self.
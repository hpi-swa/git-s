running
handleCommandResult: anObject
	"return whether the next command should be run immediately"
	anObject isPromise ifTrue: [anObject then: [:result | self handleDelayedCommandResult: result]. ^ false].
	anObject isBlock ifTrue: [self handleContinueCommandResult: anObject. ^ false].
	anObject = self class nextCommand ifTrue: [self removeNextCommand. ^ true].
	anObject = self class retry ifTrue: [^ true].
	self assert: false descriptionBlock: ['Invalid rebase command result: {1}' format: {anObject}].
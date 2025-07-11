updating
updateSetFor: aTimeStamp
	^ self updateTimeStamps at: aTimeStamp ifAbsentPut: [ | set |
		set := WeakSet new.
		[((aTimeStamp - TimeStamp now) clampLow: 0 seconds) wait.
		Project current addDeferredUIMessage: [
			set do: #updateString.
			self updateTimeStamps removeKey: aTimeStamp ifAbsent: []]] fork.
		set]
private
protectWorkingCopyRegistriesDuring: aBlock
	| oldRegistries |
	oldRegistries := Dictionary newFrom:
		({GSBaseWorkingCopy. GSGitWorkingCopy}
			collect: [:each | each -> each registry]).
	^ [oldRegistries keysDo: [:each | each registry: nil].
		aBlock value] ensure: [oldRegistries keysAndValuesDo: [:class :oldRegistry | class registry: oldRegistry]]
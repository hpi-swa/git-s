*GitS-Core-formatting
gitSFormat
	^ String streamContents: [:stream | | hadCharacter hadSpace |
		hadCharacter := false.
		hadSpace := false.
		self do: [:each | true caseOf: {
			[each isSeparator] -> [hadSpace := true].
			[each = $\] -> [stream cr. hadSpace := false].
			[true] -> [
				(hadCharacter and: [hadSpace]) ifTrue: [stream space].
				stream nextPut: each.
				hadCharacter := true.
				hadSpace := false]}]]
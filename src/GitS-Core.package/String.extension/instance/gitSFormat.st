*GitS-Core-formatting
gitSFormat
	<linterIgnoreSends: #(cr space character)>
	^ String streamContents: [:stream | | last |
		last := nil.
		self do: [:each | true caseOf: {
			[each isSeparator] -> [last = #cr ifFalse: [last := #space]].
			[each = $\] -> [stream cr. last := #cr].
			[true] -> [
				(last = #space) ifTrue: [stream space].
				stream nextPut: each.
				last := #character]}]]
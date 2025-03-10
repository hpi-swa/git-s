cancelling
confirmOrCancel: aString
	(self confirm: aString) ifFalse: [self cancel].
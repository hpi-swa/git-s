accessing
defaultEmail
	DefaultEmail isEmptyOrNil ifFalse: [^ DefaultEmail].
	GSExternalSettings at: #email ifPresent: [:email | ^ email].
	^ GitStampEmailRequest signal
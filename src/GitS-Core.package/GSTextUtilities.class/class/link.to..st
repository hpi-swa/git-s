formatting
link: aStringOrText to: aStringOrUrl
	^ self addAttribute: (TextURL url: aStringOrUrl asString) to: aStringOrText
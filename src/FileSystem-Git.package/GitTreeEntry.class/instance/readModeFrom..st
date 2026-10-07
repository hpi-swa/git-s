initialize-release
readModeFrom: aStream
	"manual implementation of Integer readFrom: (aStream upTo: Character space asInteger) asString base: 8
	speeds up GitTreeEntry>>loadFrom: by around 40%"
	| result next |
	result := 0.
	[next := aStream next.
	next = Character space asInteger ifTrue: [^ result].
	result := result * 8 + next - $0 asInteger] repeat.
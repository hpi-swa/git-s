instance creation
newFromUser
	| headings topics heading topic |
	topics := GSHelp asHelpTopic subtopics.
	topic := UIManager default
		chooseFrom: (topics collect: #title)
		values: topics.
	topic ifNil: [^ nil].
	headings := Array streamContents: [:stream |
		stream nextPut: 'None' -> nil.
		topic contents runs intervalsAndValuesDo: [:interval :attributes |
			attributes do: [:attribute |
				(attribute isKindOf: GSTextHeading) ifTrue: [ | label |
					label := topic contents string copyFrom: interval start to: interval stop.
					stream nextPut: label -> attribute key]]]].
	heading := UIManager default
		chooseFrom: (headings collect: #key)
		values: (headings collect: #value).
	^ self new
		topic: topic key;
		heading: heading;
		yourself
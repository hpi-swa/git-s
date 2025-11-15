pages
searching
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #searching"
	<generated>
	^(HelpTopic
		title: 'Searching'
		contents: 
'How to use the Search

The search conceptually works in four phases:
  1. select source commits
  2. add all ancestors of the source commits
  3. filter the resulting commits
  4. order the commits, newest first

You can configure phases 1 and 3.
Since phase 3 is the more interesting one, we will cover it first.

Filtering commits

After entering your expression, you can press Ctrl/Cmd+s to start the search.
You can use two modes to filter commits: pattern and code.

Pattern mode

The pattern mode is the default and the simpler one. It works by
  - extracting certain strings from each commit and
  - matching it against the pattern you enter.

You can configure which strings are extracted using the what to search section of the settings menu. If you select multiple options here, all of them will be searched and a commit will be shown if any of them match.

You can configure how strings are matched in the search using section of the settings menu. You can only select one option here. There is an additional checkbox to control case-sensitivity. It works with any of the options above it.

Code mode

Using the code mode, you can enter arbitrary Smalltalk expressions to determine which commits you want to see. The expression should return a Boolean and it will be evaluated using an instance of GSCommitListFilterModel as self. You should only use the methods in categories starting with public. One particularly noteworthy method is pattern:, which allows you to use the pattern mode from above within the code mode.

Some examples for searching (click to copy):

  - using boolean combinators

	self committer name = ''John Doe'' and: [self message beginsWith: ''Fix'']

	(self pattern: ''loadData.st'') not and: [self pattern: ''closes #42'']

  - searching by date

	self before: 5 days ago

	self after: 10 hours ago

	self between: 21 days ago and: 14 days ago

	self timeStamp dayOfWeekName = ''Friday''

Selecting source commits

You can configure phase 1 using the which commits to search section of the settings menu.
!
]style[(21 294 17 121 7 5 4 3 12 223 14 196 12 173 9 198 23 70 6 40 8 155 70 3 67 26 23 3 24 3 42 3 39 2 24 38 23 31)ub,,ub,,i,,i,,ub,,i,,i,,ub,,LGSCommitListFilterModel Definition;,,i,,LGSCommitListFilterModel pattern:;,,dClipboard clipboardText: ''self committer name = ''''John Doe'''' and: [self message beginsWith: ''''Fix'''']'';;,,dClipboard clipboardText: ''(self pattern: ''''loadData.st'''') not and: [self pattern: ''''closes #42'''']'';;,,dClipboard clipboardText: ''self before: 5 days ago'';;,,dClipboard clipboardText: ''self after: 10 hours ago'';;,,dClipboard clipboardText: ''self between: 21 days ago and: 14 days ago'';;,,dClipboard clipboardText: ''self timeStamp dayOfWeekName = ''''Friday'''''';;,,bu,,i,!' readStream nextChunkText)
			key: #searching;
			shouldStyle: false;
			yourself
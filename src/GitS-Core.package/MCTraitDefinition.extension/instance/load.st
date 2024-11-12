*GitS-Core-installing-override
load
	 self createClass ifNotNil: [:trait |
		trait classComment: comment stamp: commentStamp]
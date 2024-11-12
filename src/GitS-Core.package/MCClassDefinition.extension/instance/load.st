*GitS-Core-installing-override
load
	 self createClass ifNotNil:
		[:class |
		class class instanceVariableNames: self classInstanceVariablesString.
		class classComment: comment stamp: commentStamp]
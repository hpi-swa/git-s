refs-private
basicUpdateRef: refPath to: aString
	self refStores first updateRef: refPath to: aString.
	refCache updateRef: refPath to: aString.
	self refChanged: (self ref: refPath).
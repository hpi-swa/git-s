refs-private
basicUpdateRef: refPath to: aString silently: aBoolean
	self refStores first updateRef: refPath to: aString.
	refCache updateRef: refPath to: aString.
	aBoolean ifFalse: [self refChanged: (self ref: refPath)].
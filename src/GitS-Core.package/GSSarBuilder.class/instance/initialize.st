initialize-release
initialize
	super initialize.
	self
		zip: ZipArchive new;
		preamble: '';
		postAddHooks: OrderedCollection new.
private
performTest
	self classesToBeTested do: [:each |
		self classToBeTested: each.
		super performTest].
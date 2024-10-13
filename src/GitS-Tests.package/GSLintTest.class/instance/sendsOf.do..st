finding
sendsOf: aCompiledMethod do: aBlock
	GSSendsEnumerator new
		selectBlock: [:symbol :enumerator |
			self
				isSend: symbol
				in: aCompiledMethod
				enumerator: enumerator];
		doBlock: aBlock;
		visit: (Parser new
				parse: aCompiledMethod getSource
				class: aCompiledMethod methodClass).
finding
sendsOf: aCompiledMethod do: aBlock
	GSSendsEnumerator new
		selectBlock: [:symbol :enumerator |
			self
				isSend: symbol
				in: aCompiledMethod
				enumerator: enumerator];
		doBlock: aBlock;
		visit: ([aCompiledMethod parserClass new
				parse: aCompiledMethod getSource
				class: aCompiledMethod methodClass]
					on: ShadowedVariableNotification
					do: #resume).
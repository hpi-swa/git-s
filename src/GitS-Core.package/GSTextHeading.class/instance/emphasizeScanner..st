accessing
emphasizeScanner: aScanner
	{TextEmphasis bold. TextEmphasis underlined}
		do: [:each | each emphasizeScanner: aScanner].
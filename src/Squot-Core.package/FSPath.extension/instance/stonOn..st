*Squot-Core-STON
stonOn: stonWriter
	stonWriter writeObject: self do: [
		stonWriter encodeList: (OrderedCollection withAll: self)].
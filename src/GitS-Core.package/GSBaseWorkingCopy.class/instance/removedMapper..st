mappers
removedMapper: aMapper
	aMapper
		onRemovedFrom: self willBe: aMapper asInferred;
		removeDependent: self.
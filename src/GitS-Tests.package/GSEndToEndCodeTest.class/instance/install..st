data
install: anEndToEndTestVersion
	self targetClass
		compile: anEndToEndTestVersion source
		classified: anEndToEndTestVersion category.
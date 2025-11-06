tests
testNewProject
	self
		newProject;
		find: self projectName;
		find: 'local branches';
		find: 'main' asText allBold.
rebase
testRebaseBase: baseBlock main: mainBlock target: targetBlock onto: commitLabel window: windowBlock
	"Both branches start from a shared base commit created by baseBlock; mainBlock then commits on
	main and targetBlock on target. Opens the Rebase window that rebases main's commit(s) onto the
	target tip (commitLabel). windowBlock drives the opened window and asserts."
	self
		do: baseBlock;
		rightClick: 'main' asText allBold;
		do: [self leftClick: 'Create a branch at it']
		supplyingAnswer: #('Create a branch at main. Branch name:' 'target');
		do: mainBlock;
		rightClick: 'target' asText;
		leftClick: 'Switch to it';
		leftClick: 'Load changes';
		do: targetBlock;
		rightClick: 'main' asText;
		leftClick: 'Switch to it';
		leftClick: 'Load changes';
		leftClick: 'target' asText;
		rightClick: commitLabel;
		moveTo: 'Advanced';
		leftClick: 'Rebase branch ''main'' onto it';
		do: windowBlock.
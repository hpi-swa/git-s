types
typeSpecs
	<linterIgnoreSends: #(unknown)>
	^ #(
		"type		label							show"
		'feat'		'Features'						true
		'perf'		'Performance improvements'	true
		'docs'		'Documentation'				true
		'fix'			'Fixes'							true
		'deps'		'Dependencies'				true
		unknown	'Uncategorized'				true
		'refactor'	'Refactoring'					false
		'style'		'Style changes'				false
		'test'		'Testing'						false
		'ci'			'CI'								false
	)
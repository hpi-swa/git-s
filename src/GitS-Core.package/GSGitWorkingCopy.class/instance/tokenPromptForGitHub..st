credentials
tokenPromptForGitHub: anUrl
	^ 'Token for {1}. Create a {2} (highly customizable) or a {3} (easier to configure).' asText format:
		{anUrl}, (#(
			'granular token' 'personal-access-tokens' 'name={1}&contents=write'
			'classic one' 'tokens' 'description={1}&scopes=repo') groupsCollect: [:label :segment :search |
				GSTextUtilities link: label to: ('https://github.com/settings/{1}/new?{2}' format: {segment. search format: {self name encodeForHTTP}})])
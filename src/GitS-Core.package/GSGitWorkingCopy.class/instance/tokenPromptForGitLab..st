credentials
tokenPromptForGitLab: anUrl
	^ 'Token for {1}. Create a {2} (highly customizable) or a {3} (easier to configure).' asText format:
		{anUrl}, ({
			'fine-grained token'. 'granular'. nil.
			'legacy one'. 'legacy'. 'name={1}&scopes=read_repository,write_repository' format: {self name encodeForHTTP}} groupsCollect: [:label :segment :query |
			GSTextUtilities
				link: label
				to: (anUrl class
						schemeName: anUrl schemeName
						authority: anUrl authority
						path: {'-'. 'user_settings'. 'personal_access_tokens'. segment. 'new'}
						query: query)])
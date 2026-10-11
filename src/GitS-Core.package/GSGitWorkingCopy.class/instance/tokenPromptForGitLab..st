credentials
tokenPromptForGitLab: anUrl
	^ 'Token for {1}. Create a {2} or a {3} with at least the ''read_repository'' scope (and ''write_repository'' if you want to push).' asText format:
		{anUrl}, (#('fine-grained token' 'granular' 'legacy one' 'legacy') pairsCollect: [:label :segment |
			GSTextUtilities
				link: label
				to: (anUrl copy
						path: {'-'. 'user_settings'. 'personal_access_tokens'. segment. 'new'};
						yourself)])
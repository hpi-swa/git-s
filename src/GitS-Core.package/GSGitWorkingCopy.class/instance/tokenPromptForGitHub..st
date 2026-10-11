credentials
tokenPromptForGitHub: anUrl
	^ 'Token for {1}. Create a {2} or a {3} with at least the ''repo'' scope.' asText format: {
		anUrl.
		GSTextUtilities link: 'granular token' to: 'https://github.com/settings/personal-access-tokens/new'.
		GSTextUtilities link: 'classic one' to: 'https://github.com/settings/tokens/new'}
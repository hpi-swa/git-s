credentials
handleCredentialsDuring: aBlock
	^ aBlock
		on: NeedGitCredentials
		do: [:notification |
			notification resume:
				(self getCredentialsFor: notification repositoryUrl)]
		on: GitRemoteAuthenticationFailed
		do: [:error |
			self removeCredentialsFor: error remote url asUrl.
			GSGUIUtilities confirmOrCancel: 'Invalid credentials. Do you want to try again?'.
			self handleCredentialsDuring: aBlock]
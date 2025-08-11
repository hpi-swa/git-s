remotes
unsetUpstreamOfBranchNamed: aString
	"git branch --unset-upstream aString"
	self
		unsetUpstreamRefOfBranchNamed: aString;
		unsetUpstreamRemoteOfBranchNamed: aString.
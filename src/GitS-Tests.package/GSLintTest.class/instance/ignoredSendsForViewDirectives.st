ignored-sends
ignoredSendsForViewDirectives
	^ {
		GSBrowser>>#revealActiveTreeMember -> #openPath.
		GSCommitList>>#markNotYetGenerated -> #editString.
	}
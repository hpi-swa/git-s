ignored-sends
ignoredSendsForSqueakCompatibility
	^ #(SmalltalkCI getEnv: getenv:) collect: [:each | GSSelfUpdater class>>#getShaOfVersion: -> each]
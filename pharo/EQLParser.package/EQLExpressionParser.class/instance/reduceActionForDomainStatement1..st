generated-reduction actions
reduceActionForDomainStatement1: nodes
	| result |
	result := EQLDomainStatementNode new.
	result domainToken: (nodes at: 1).
	result url: (nodes at: 2).
	^ result
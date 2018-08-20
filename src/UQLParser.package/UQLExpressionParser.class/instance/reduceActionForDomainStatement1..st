generated-reduction actions
reduceActionForDomainStatement1: nodes
	| result |
	result := UQLDomainStatementNode new.
	result domainToken: (nodes at: 1).
	result url: (nodes at: 2).
	^ result
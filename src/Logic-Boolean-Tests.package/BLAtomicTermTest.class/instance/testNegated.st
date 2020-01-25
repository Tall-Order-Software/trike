tests
testNegated
	| notNotA |
	
	super testNegated. 
	notNotA := notA negated.
	self
		"If notA is not a BLClause, it will not respond to #isAtomicTerm."
		assert: [notA isAtomicTerm];
		assert: [notNotA isAtomicTerm];
		"The following will not be true for Boolean atoms."
		assert: [notA isNegated];
		assert: a atom equals: notA atom;
		deny: [notNotA isNegated]
simplification
simplify
	"Simplify myself in place"

	"By definition, an atomic term cannot be simplified.  However, this class
	also implements the logical operator NOT, and a non-negated atomic term is
	simpler than a negated term.  In general, simplificaion should not evaluate,
	but I do examine and consider Boolean literals."

	(self isNegated and: [self atom isBooleanLiteral]) ifTrue: [
		self atom: self atom not;
			isNegated: false ]
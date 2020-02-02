tests
testNegated
	"By the rules of Boolean logic, negating a twice will always be a"
	"Subclasses should extend to add tests to confirm the value of notNotA."
	| notNotA |

	notNotA := notA negated.
	self
		assert: notNotA equals: a

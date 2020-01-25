tests
testNegated
	"Subclasses should override to add tests to confirm the value of notNotA."
	| notNotA |

	notNotA := notA negated.
	self
		assert: notNotA equals: a

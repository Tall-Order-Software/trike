tests
testEquivalenceIdentity
	| anotherA notAnotherA |

	anotherA := self classToBeTested on: self objectForA.
	notAnotherA := anotherA negated.
	self
		assert: a equals: a;
		assert: notA equals: notA;
		assert: a equals: anotherA;
		assert: notA equals: notAnotherA;
		assert: a asString equals: a asString;
		assert: notA asString equals: notA asString
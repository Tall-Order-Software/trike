tests
testHashEquivalenceIdentity
	| anotherA notAnotherA |
	anotherA := self classToBeTested on: self objectForA.
	notAnotherA := anotherA negated.
	self
		assert: a hash equals: a hash;
		assert: a hash equals: anotherA hash;
		assert: notA hash equals: notAnotherA hash
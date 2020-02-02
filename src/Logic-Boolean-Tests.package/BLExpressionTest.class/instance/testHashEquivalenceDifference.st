tests
testHashEquivalenceDifference
	| b |

	b := self classToBeTested on: self objectForB.
	self
		deny: a hash equals: notA hash;
		deny: a hash equals: b hash
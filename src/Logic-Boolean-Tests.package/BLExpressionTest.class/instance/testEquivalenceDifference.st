tests
testEquivalenceDifference
	| b |

	b := self classToBeTested on: self objectForB.
	self
		deny: a equals: notA;
		deny: a equals: b;
		deny: a asString equals: notA asString;
		deny: a asString equals: b asString 
tests
testAndOpposites
  "By the rules of Boolean logic, a /\ not (a) will always be false"
	| and |

	and := a /\ notA.
	
	"If and is not an AtomicTerm, it will not respond to #atom."
	self assert: and atom equals: false.


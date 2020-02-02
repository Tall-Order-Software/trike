tests
testOrOpposites
  "By the rules of Boolean logic, a \/ not (a) will always be true"
	| or |

	or := a \/ notA.
	
	"If or is not an AtomicTerm, it will not respond to #atom."
	self assert: or simplified atom equals: true.


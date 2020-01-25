tests
testBooleanAtoms
	"Atomic terms whose values are Booleans behave differently from atoms of other types."
	
	| a notA |
	
	self flag: #wrong.
	
	a := BLAtomicTerm on: 'A'.
	notA := a negated.
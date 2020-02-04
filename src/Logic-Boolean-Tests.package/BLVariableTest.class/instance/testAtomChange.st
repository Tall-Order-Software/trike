tests
testAtomChange	
	"Change the atom of an instance"

	"Change an existing atom."
	a atom: self objectForB.
	"BlockClosure does not include an equivalence test."
	self assert: a atom printString equals: self objectForB printString.

	"Unset an existing atom."
	a atom: nil.
	self assert: a atom equals: nil.

	"Set a previously unset atom."
	c atom: self objectForA.
	self assert: c atom equals: self objectForA.

tests
testNamehange	
	"Change the name of an instance"

	"Set a previously unset name."
	a name: self nameForB.
	self assert: a name equals: self nameForB.

	"Change an existing name."
	b name: self nameForC.
	self assert: b name equals: self nameForC.

	"Unset an existing name."
	c name: nil.
	self assert: c name equals: nil.



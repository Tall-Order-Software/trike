running
setUp

	super setUp.
	"Initialize instance variables:
	- a = an instance of #classToBeTested 
	- notA = an instance of #classToBeTested (or some other class) with the opposite meaning of a.

	All these instance variables are set to nil in #cleanUpInstanceVariables, so
	there is no need to override tearDown."
	
	a := self classToBeTested on: self objectForA.
	notA := a negated. 



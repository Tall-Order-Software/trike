running
setUp
	"Prepare my test fixture.  Run beforre each test* method."

	super setUp.

	a := self classToBeTested on: self objectForA.
	b := self classToBeTested named: self nameForB equals: self objectForB.
	c := self classToBeTested named: self nameForC.
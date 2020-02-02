Integration tests
---------

I test all of the classes in Logic-Boolean.

INSPIRATION

- Properties of Boolean logic documented on Wikipedia (see http://en.wikipedia.org/wiki/Boolean_logic)

LIMITATIONS

- Write performance tests for simplification & comparison.
- Write tests for when you need parens when constructing BLExpressions

INSTANCE VARIABLES

These instance variables are initialized by test setUp, then used by test*.
	
	a, b, c, d, notA:	predefined AtomicTerms used to test compound BLExpressions
	receivedEvents:	OrderedCollection of events received during this test; used to test change notification

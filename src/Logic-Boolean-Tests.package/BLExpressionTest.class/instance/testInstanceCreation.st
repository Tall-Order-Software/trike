tests
testInstanceCreation
	"Create an instance of the class I test"

	"No need for an assertion; the test will already be marked as an error if it
	 throws an Exception when creating an instance, which it does during #setUp."

	self subclassResponsibility
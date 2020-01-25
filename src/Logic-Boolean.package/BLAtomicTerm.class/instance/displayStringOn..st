displaying
displayStringOn: aStream
	"While #printOn: is about to give a detailled information about an object, #displayStringOn: is a message that should return a string-based representation to be used by list and related UI frameworks. By default, simply use printOn: method.
	Subclasses should override this method instead of #displayString"

	self flag: #todo.
	self printOn: aStream
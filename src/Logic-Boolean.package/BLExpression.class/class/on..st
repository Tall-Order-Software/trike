instance creation
on: anObject
	"Answer an instance of self clauseClass that applies my meaning to anObject.
	This instance may be anObject, an instance of self atomicTermClass on a
	Boolean, a new instance of myself, or any other appropriate object."

	"Answer anObject as an instance of me, or (if anObject is a Boolean expression)
	 a clause equivalent to anObject."

	^anObject isBooleanExpression
		ifTrue: [
			anObject isClause
				ifTrue: [ anObject ]
				ifFalse: [ anObject asClause ]]
		ifFalse: [ self new on: anObject ]
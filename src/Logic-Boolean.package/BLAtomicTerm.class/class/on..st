instance creation
on: anObject
	"Answer anObject as an instance of me, or (if anObject is a Boolean expression)
	 a clause equivalent to anObject."

	^anObject isBooleanExpression
		ifTrue: [
			anObject isClause
				ifTrue: [ anObject ]
				ifFalse: [ anObject asClause ]]
		ifFalse: [ self new on: anObject ]
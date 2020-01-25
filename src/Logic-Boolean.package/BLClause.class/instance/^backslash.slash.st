instance creation
\/ aClause
	"Answer a new instance of me that represents a logical OR of my condition and 
	that of aClause."

	^self = aClause 
		ifTrue: [self]
		ifFalse: 
			[ | newChildren |
			newChildren := OrderedCollection new.
			newChildren
				add: self;
				add: aClause.
			self orClass on: newChildren]
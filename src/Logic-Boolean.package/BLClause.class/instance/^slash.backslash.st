instance creation
/\ anObject 
	"Answer a new instance of my class which represents my condition  
	AND (in a logical sense) that of aClause."
	^ anObject
		ifNotNil: [| newChildren | 
			newChildren := OrderedCollection new.
			newChildren add: self;
				
				addAllFirstUnlessAlreadyPresent: (Array with: anObject).
			BLAnd withChildren: newChildren]
		ifNil: [ self ]
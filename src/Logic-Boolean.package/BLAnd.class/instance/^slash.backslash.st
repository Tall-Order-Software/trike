instance creation
/\ aClause 
	"Answer a copy of myself, with aRule added to my children."
	^ aClause isFalse 
		ifTrue: [aClause]
		ifFalse: [ | result |
			result := self copy.
			result addChild: aClause.
			result simplified]
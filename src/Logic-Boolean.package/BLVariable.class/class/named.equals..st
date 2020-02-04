instance creation
named: anIdentifyingObject equals: aValueObject
	"Answer a new instance of myself, with anIdentifyingObject as its name and
	 anObject as its atom."

	^ self new
		name: anIdentifyingObject;
		atom: aValueObject;
		yourself

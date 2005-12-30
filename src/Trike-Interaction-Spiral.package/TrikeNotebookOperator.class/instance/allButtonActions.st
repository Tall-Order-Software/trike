accessing
allButtonActions
	"Answer a SpiralActions representing message categories that  
	could potentially interest me, i.e. invoking the actions in my  
	answer will yield SpiralActions which contain the actions that  
	interest me."
	| result |
	result := super allButtonActions.
	result
		add: (GenericActions
				label: 'opening models'
				receiver: notebook
				selector: #bookEditingActions
				arguments: #())
		beforeIndex: 1.
	result
		add: (GenericActions
				label: 'Squeak functions'
				receiver: self class
				selector: #squeakActions
				arguments: #()).
	^ result
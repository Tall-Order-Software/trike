event handling
bookEditingActions
	"Answer an OrderedCollection containing all book editing
	actions 
	my instances support."
	| result |
	result := OrderedCollection new.
	result
		add: (GenericAction
				label: 'New'
				receiver: self
				selector: #addPage
				arguments: #()).
	^ result
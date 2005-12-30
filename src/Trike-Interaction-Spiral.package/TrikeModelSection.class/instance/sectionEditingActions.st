event handling
sectionEditingActions
	"Answer an OrderedCollection containing all section editing actions  
	my instances support."
	| result action |
	result := OrderedCollection new.
	result
		add: (GenericAction
				label: 'close'
				receiver: self
				selector: #close
				arguments: #()).
	action := GenericAction
				label: 'save'
				receiver: self
				selector: #save
				arguments: #().
	action description: 'Save the selected model in its existing file, in native format.'.
				
	result add: action;
		
		add: (GenericActions
				label: 'save as'
				receiver: self
				selector: #saveAsActions
				arguments: #()).
		
	^ result
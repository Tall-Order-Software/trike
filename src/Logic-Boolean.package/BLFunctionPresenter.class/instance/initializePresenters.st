initialization
initializePresenters
	"Create & configure presenters to view my model."

	"Instantiate widgets"
	tree := self newTreeTable.
	
	"Configure widgets"
	tree
		flag: #i18n;
		addColumn: (SpStringTableColumn title: 'Expression' evaluated: #displayString);
		children: [ :anObject | #() ];
		beResizable.
	
	"Specify focus order"
	self focusOrder add: tree

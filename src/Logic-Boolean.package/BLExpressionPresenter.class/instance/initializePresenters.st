initialization
initializePresenters
	"Create & configure presenters to view my model."

	"Instantiate widgets"
	tree := self instantiate: SpTreeTablePresenter on: announcingObject.
	
	"Configure widgets"
	tree
		addColumn: (SpStringTableColumn title: 'Expression' evaluated: [ :expression | expression printString ]);
		roots: { announcingObject };
		children: [ :anObject | #() ];
		beResizable;
		activateOnDoubleClick;
		whenActivatedDo: [ :selection | selection selectedItem browse ].
	
	"Specify focus order"
	self focusOrder add: tree

	
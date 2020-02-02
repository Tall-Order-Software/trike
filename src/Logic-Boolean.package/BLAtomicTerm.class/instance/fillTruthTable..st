simplification
fillTruthTable: aTruthTable 
	"Set values in a truth table to make it equivalent to me."
	not
		ifTrue: [aTruthTable
				at: (BLFunctionInputs index: '0' in: aTruthTable)
				put: true;
				
				at: (BLFunctionInputs index: '1' in: aTruthTable)
				put: false]
		ifFalse: [aTruthTable
				at: (BLFunctionInputs index: '0' in: aTruthTable)
				put: false;
				
				at: (BLFunctionInputs index: '1' in: aTruthTable)
				put: true]
coverage
selectorsToBeIgnored
	| testedInSetUp |

	testedInSetUp := #( #named: #named:equals: #on: ).

	^ super selectorsToBeIgnored, testedInSetUp
Logic-Boolean is a simple package for manipulating Boolean expressions.

## Features

 - Construct, compare, simplify, modify and evaluate Boolean functions. 
 - Use any type as an atom in a function.
 - Create a Spec UI to edit functions as expressions or truth tables.
 - Register to receive Announcements from expressions.

## Limitations

 - BLTruthTables do not support Announcements.
 - Evaluation is only supported when atoms are Booleans or blocks with no arguments.

## Classes

 - BLFunction - A Boolean function (abstract)
	- BLExpression - Tree representation of a Boolean function (abstract)
		- BLAtomicTerm - Leaf node in a Boolean expression
		- BLCoordinator - Non-leaf (interior) node in a Boolean expression
   - BLTruthTable - Table (actually array) representation of a Boolean expression as an array of Boolean outcomes for various combinations (indexed by BLGrayCodes) of Boolean inputs (BLAtomicTerms).  Typically used to simplify or otherwise manipulate a BLClause. 
- BLFunctionInputs - 			Indices into BLTruthTables, typically used during simplification.

- Atoms are not Boolean expressions (their type is external to this package & is determined by the package user).  
- Every BLExpression knows who its parents are. Parents may or may not be Boolean expressions.  

USE FROM CODE

Building expressions:
	Either the compiler or the dev tools have some assumptions about and:, or:, and Squeak's Boolean classes, so those messages were unavailable.
	
	a := BLAtomicTerm on: 'A'.
	b := BLAtomicTerm on: 'B'.
	a /\ b.
	a \/ b.
	a negated.
	
	As usual, beware parentheses when constructing compound expressions.
	
Simplifying expressions:
	Use 
		BLExpression>>simplified to get an equivalent, simplified BLExpression with a similar representation (BLClause or BLTruthTable).  This simplified BLExpression may be identical to the original BLExpression.
		BLExpression>>simplify to replace this BLExpression with a simplified expression.  The expression will be replaced for all of its parents.
	
Comparing expressions:
	Two BLAtomicTerms are equivalent when their atoms are equivalent and their negation (the instance variable) is the same.
	Two BLExpressions are equivalent according to the rules of Boolean logic.  Parents are not considered.

Evaluating expressions:
	Use
		BLExpression>>value to evaluate the atoms (which must respond to #value) in an expression, combine them appropriately, and answer a regular Squeak Boolean.
	
Change notification:
	BLClauses are Announcers.  By default, BLClauses will announce the following kinds of events:
	
	A BLAtomicTerm will announce BLValueChangeAnnouncement immediately after
		its not variable changes (BLNegationChangeAnnouncement)) or
		its atom changes (BLAtomChangeAnnouncement).
	Subclasses and other related classes must ensure that any other event which changes the string representation of a BLClause also makes a BLValueChangeAnnouncement for that clause immediately afterwards.
	
	A BLCoordinator will announce BLChildrenChangeAnnouncement after
		children are added (newChildren will be populated)
		children are removed (oldChildren will be populated)
		children are replaced (both oldChildren and newChildren will be populated).
	When multiple children are changed at once, only one announcement is sent; it includes the details for all the changes which occurred together.  Subclasses must preserve this behavior.
	
EXAMPLES

See BLTest and Trike.

LICENSE

For license see https://github.com/sparagi/logic/blob/master/LICENSE.
	

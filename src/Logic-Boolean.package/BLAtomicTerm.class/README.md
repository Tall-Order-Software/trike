BLAtomicTerms are the leaves in a BLClause.

A few atomic terms are treated specially:

 - true
 - false
 - nil
 - a block with no arguments

See BLExpression for more information.

My instances are
the leaf nodes in Boolean expressions, and the atomic terms in truth tables.  I
understand Boolean values, and can evaluate blocks without arguments.

Atomic terms are objects that appear in Boolean expressions, but are (mostly)
not understood I wrap these objects

"234567890123456789012345678901234567890123456789012345678901234567890123456789"

leaves in Boolean expressions.


 
For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

## Public API

HERE! Method categories intended to be public

### Instantiation

Example!
 
## Internals

### Instance Variables

	atom:		<Object> - Any object can be an atom in a Boolean expression, but atoms are usually
	Booleans, Strings, or blocks that do not take arguments.

context (optional): <Object> - The largest object (e.g. a <BLFunction>) that
	refers to this Boolean variable.

name (optional): <Object> - An identifier (e.g. a <String> or <Number>) for this
	variable.  Should be unique within the context (if any) in which it appears.

### Implementation Decisions

 - I am a wrapper.  I add Announcements
Instances of me represent variables in Boolean logic.

I allow arbitrary objects to be included in Boolean functions.

## Public API

### Instantiation

```Smalltalk
self on: 'the moon is made of green cheese'.
self named: 11 equals: [ DateAndTime now hour > 12 ].
self named: 'C'.
```

See also BLVariableTest>>setUp.

## Internals

### Instance Variables

atom (optional): <Object> - An object (e.g. a <Boolean>, <String>, or
	<BlockClosure>) that represents the value of this variable.  Only nil,
	true, false, and blocks with no arguments are meaningful to this library;
	the application must interpret any other values.

name (optional): <Object> - An identifier (e.g. a <String> or <Number>) for this
	variable.

At least one of name or atom must be specified.

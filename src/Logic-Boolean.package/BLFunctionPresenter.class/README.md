I am a composable presenter that displays Boolean functions as trees.

I create presenters and connect them to the Boolean function(s) I present and
each other.

## Public API

### Instantiation

```Smalltalk
self new
	model: (BLVariable named: 'A' equals: 'the moon is made of green cheese');
	openWithSpec.
```

See also BLExpressionPresenterTest>>???.

## Internals

### Instance Variables

tree: <SpTreeTablePresenter> - A tree view of the varable names in the
	expression(s) I present, and the corresponding atoms.

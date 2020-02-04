I represent the software configuration of the Logic-Boolean package.

Metacello uses me to download & install Logic-Boolean and its dependencies.  For example:

```Smalltalk
Metacello new
	repository: 'github://octotrike/trike/src';
	baseline: 'LogicBoolean';
	load
```

I'm a very simple subclass of BaselineOf.  The best resource for understanding my use and API is the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) documentation on the Pharo wiki.

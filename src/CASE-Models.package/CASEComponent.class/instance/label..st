accessing
label: aString
	"Set my human-readable label."

	aString = label ifFalse: [ 
		self session commit: [ | oldLabel | 
			oldLabel := label.
			label := aString.
		
			self announce: (CASEAboutToChangeLabel from: oldLabel to: label)]].

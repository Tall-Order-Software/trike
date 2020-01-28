displaying
displayStringOn: aStream
	"Add a String containing a human-readable name for me to aStream."
	self flag: #i18n.

	aStream nextPutAll: 'Atomic Term'
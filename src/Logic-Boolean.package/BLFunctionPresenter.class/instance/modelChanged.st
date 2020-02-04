initialization
modelChanged
	"My model (announcingObject) has changed"

	super modelChanged.
	self tree roots: { announcingObject }
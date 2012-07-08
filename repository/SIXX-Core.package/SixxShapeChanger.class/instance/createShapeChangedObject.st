override hooks
createShapeChangedObject
	"override if shapeChangedObjectClass does not understand #new"

	^self shapeChangedObjectClass new.
	
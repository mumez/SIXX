accessing
shapeChangedObject
	"Answer the value of shapeChangedObject"
	shapeChangedObject isNil ifTrue: [
		shapeChangedObject := self createShapeChangedObject.
		self preInitShapeChangedObject.
		self initializeShapeChangedObject.
	].

	^ shapeChangedObject
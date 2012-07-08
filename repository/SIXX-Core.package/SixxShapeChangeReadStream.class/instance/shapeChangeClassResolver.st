accessing
shapeChangeClassResolver
	shapeChangeClassResolver ifNil: [shapeChangeClassResolver := SixxClassResolver new].
	^ shapeChangeClassResolver
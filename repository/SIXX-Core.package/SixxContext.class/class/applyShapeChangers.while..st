actions-shapeChanger
applyShapeChangers: shapeChangers while: block 
	^ [self shapeChangers: shapeChangers.
	block value]
		ensure: [self resetShapeChangers]
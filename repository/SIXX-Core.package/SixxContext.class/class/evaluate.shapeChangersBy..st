actions-shapeChanger
evaluate: block  shapeChangersBy: registeringBlock
	| shapeChangers |
	shapeChangers := Dictionary new.
	registeringBlock value: shapeChangers.
	^self applyShapeChangers: shapeChangers while: block 
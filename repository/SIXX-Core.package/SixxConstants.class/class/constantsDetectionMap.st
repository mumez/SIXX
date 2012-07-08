accessing
constantsDetectionMap
	ConstantsDetectionMap isNil ifTrue: [ConstantsDetectionMap := Dictionary new].
	^ConstantsDetectionMap
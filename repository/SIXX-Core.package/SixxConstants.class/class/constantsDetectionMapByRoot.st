accessing
constantsDetectionMapByRoot
	ConstantsDetectionMapByRoot isNil ifTrue: [ConstantsDetectionMapByRoot := Dictionary new].
	^ConstantsDetectionMapByRoot
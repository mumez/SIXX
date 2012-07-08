accessing
xmlVersion
	xmlVersion isNil ifTrue: [xmlVersion := '1.0'].
	^ xmlVersion
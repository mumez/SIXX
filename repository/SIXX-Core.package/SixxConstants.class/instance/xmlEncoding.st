accessing
xmlEncoding
	xmlEncoding isNil ifTrue: [xmlEncoding := 'utf-8'].
	^ xmlEncoding
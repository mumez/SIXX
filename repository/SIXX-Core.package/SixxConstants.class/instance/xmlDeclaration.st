constants-root
xmlDeclaration
	xmlDeclaration isNil ifTrue: [xmlDeclaration := '<?xml version="', self xmlVersion, '" encoding="', self xmlEncoding, '"?>'].
	^xmlDeclaration
	
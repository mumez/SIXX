actions-parse
attributeAt: attributeName from: parser 
	^ parser 
		at: attributeName
		ifNone: [ nil ]
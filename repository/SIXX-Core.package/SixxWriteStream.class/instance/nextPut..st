writing
nextPut: anObject 
	self startTag.
	anObject
		sixxOn: self stream
		indent: 1
		context: self contextDictionary
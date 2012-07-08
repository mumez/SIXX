*sixx-inout-common-printing
sixxContentOn: aStream indent: level context: dictionary 
	aStream nextPutAll: x printString.
	aStream nextPut: $@.
	aStream nextPutAll: y printString.
	
	
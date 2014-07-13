*sixx-inout-pharo-printing
sixxContentOn: aStream indent: level context: dictionary 
	aStream nextPutAll: '#( '.
	self do:[:each | aStream nextPutAll: each printString; space].
	aStream nextPutAll: ')'.
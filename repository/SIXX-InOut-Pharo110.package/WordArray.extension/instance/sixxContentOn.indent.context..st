*SIXX-InOut-Pharo110-printing
sixxContentOn: aStream indent: level context: dictionary 
	aStream nextPutAll: '#( '.
	self do:[:each | aStream nextPutAll: each printString; space].
	aStream nextPutAll: ')'.
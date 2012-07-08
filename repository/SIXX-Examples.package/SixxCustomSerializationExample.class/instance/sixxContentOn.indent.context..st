sixx-printing
sixxContentOn: aStream indent: level context: dictionary
	aStream nextPutAll: self varTime sixxContentString.
	aStream nextPut: $;.
	aStream nextPutAll: self varString.
	aStream nextPut: $;.
	aStream nextPutAll: self varNumber printString.
	aStream nextPut: $;.
	
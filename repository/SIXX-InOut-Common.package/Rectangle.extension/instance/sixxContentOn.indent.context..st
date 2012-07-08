*sixx-inout-common-printing
sixxContentOn: aStream indent: level context: dictionary 
	self origin sixxContentOn: aStream indent: level context: dictionary.
	aStream nextPutAll: ' corner: '.
	self corner sixxContentOn: aStream indent: level context: dictionary.
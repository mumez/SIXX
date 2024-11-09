*SIXX-InOut-Pharo110-printing
sixxContentOn: aStream indent: level context: dictionary 
	aStream
		nextPutAll: '(' , self class name;
		nextPutAll: ' r: '; print: (self red roundTo: 0.001);
		nextPutAll: ' g: '; print: (self green roundTo: 0.001);
		nextPutAll: ' b: '; print: (self blue roundTo: 0.001);
		nextPutAll: ')'.
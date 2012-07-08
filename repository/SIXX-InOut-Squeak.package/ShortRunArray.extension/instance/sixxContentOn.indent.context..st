*sixx-inout-squeak-printing
sixxContentOn: aStream indent: level context: dictionary 
	| runs values |
	runs := OrderedCollection new.
	values := OrderedCollection new.
	self runsAndValuesDo: [:r :v | runs add: r. values add: v].

	aStream nextPutAll: '#( '.
	aStream nextPutAll: runs asArray printString; space.
	aStream nextPutAll: values asArray printString; space.
	aStream nextPutAll: ')'.
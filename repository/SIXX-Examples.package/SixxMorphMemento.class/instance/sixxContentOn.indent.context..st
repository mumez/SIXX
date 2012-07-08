writing/reading sixx
sixxContentOn: aStream indent: level context: dictionary 
	"override if you like"
	aStream cr.
	self morphForStore
		sixxOn: aStream
		name: 'morph'
		indent: level + 1
		context: dictionary.
	aStream tab: level
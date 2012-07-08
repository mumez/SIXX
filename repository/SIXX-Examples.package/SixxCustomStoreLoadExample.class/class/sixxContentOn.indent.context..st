sixx writing/reading
sixxContentOn: aStream indent: level context: dictionary 
	"override if you like"
	aStream cr.
	self instances
		sixxOn: aStream
		name: 'instances'
		indent: level + 1
		context: dictionary.
	aStream tab: level
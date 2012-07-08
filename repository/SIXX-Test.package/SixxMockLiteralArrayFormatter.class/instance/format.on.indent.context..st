override hooks
format: array on: aStream indent: level context: dictionary 
	aStream cr.
	array printString
		sixxOn: aStream
		indent: level + 1
		context: dictionary.
	aStream tab: level
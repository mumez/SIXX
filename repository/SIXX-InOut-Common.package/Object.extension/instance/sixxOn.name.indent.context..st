*sixx-inout-common-printing
sixxOn: aStream name: nameString indent: level context: dictionary 
	self sixxPrepareWrite.
	self sixxWriteValue
		basicSixxOn: aStream
		originator: self
		name: nameString
		indent: level
		context: dictionary
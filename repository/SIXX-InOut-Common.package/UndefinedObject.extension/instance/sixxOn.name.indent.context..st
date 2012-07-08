*sixx-inout-common-printing
sixxOn: aStream name: nameString indent: level context: dictionary 
	self
		writeEmptySixxTagOn: aStream
		attributesDo: [:wStr | 
			self writeBasicSixxAttributesOn: wStr name: nameString]
		name: nameString
		indent: level
		context: dictionary
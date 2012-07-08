*sixx-inout-common-private
sixxRefOn: aStream id: idString name: nameString indent: level context: dictionary 
	self
		writeEmptySixxTagOn: aStream
		attributesDo: [:wStr | 
			self writeSixxAttributeOn: wStr name: nameString.
			self writeSixxAttributeOn: wStr idref: idString]
		name: nameString
		indent: level
		context: dictionary
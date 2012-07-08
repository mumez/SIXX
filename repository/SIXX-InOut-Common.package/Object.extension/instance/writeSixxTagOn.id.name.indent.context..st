*sixx-inout-common-private
writeSixxTagOn: aStream id: idStr name: nameString indent: level context: dictionary 
	| constants formatter |
	aStream tab: level.
	constants := SixxConstants current.
	formatter := dictionary formatterResolver
				formatterAt: self class
				in: self sixxEnv.
	SixxXmlUtil
		writeTagNamed: constants objectTagName
		attributesDo: [:wStr | 
			self writeSixxAttributeOn: wStr id: idStr.
			self writeBasicSixxAttributesOn: wStr name: nameString.
			self writeSixxAttributeOn: wStr formatter: formatter]
		contentDo: [:wStr | formatter isNil
				ifTrue: [self
						sixxContentOn: wStr
						indent: level
						context: dictionary]
				ifFalse: [formatter
						format: self
						on: wStr
						indent: level
						context: dictionary]]
		on: aStream.
	aStream cr
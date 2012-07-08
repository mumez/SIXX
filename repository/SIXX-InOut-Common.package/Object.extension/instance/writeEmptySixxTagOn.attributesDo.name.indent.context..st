*sixx-inout-common-private
writeEmptySixxTagOn: aStream attributesDo: block name: nameString indent: level context: dictionary 
	| constants |
	aStream tab: level.
	constants := SixxConstants current.
	SixxXmlUtil
		writeEmptyTagNamed: constants objectTagName
		attributesDo: [:wStr | block value: wStr]
		on: aStream.
	aStream cr
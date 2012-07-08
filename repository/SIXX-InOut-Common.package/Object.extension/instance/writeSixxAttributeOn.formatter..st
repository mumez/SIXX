*sixx-inout-common-private
writeSixxAttributeOn: aStream formatter: formatter
	formatter isNil ifTrue: [^self].
	SixxXmlUtil writeAttribute: SixxConstants current formatterTagName value: formatter name on: aStream.
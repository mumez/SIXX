*sixx-inout-common-private
writeSixxAttributeOn: aStream id: idString
	idString isNil ifTrue: [^self].
	SixxXmlUtil writeAttribute: SixxConstants current idTagName value: idString on: aStream.
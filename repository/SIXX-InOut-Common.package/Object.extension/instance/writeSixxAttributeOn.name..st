*sixx-inout-common-private
writeSixxAttributeOn: aStream name: nameString

	SixxXmlUtil writeAttribute: SixxConstants current nameTagName value: nameString on: aStream.
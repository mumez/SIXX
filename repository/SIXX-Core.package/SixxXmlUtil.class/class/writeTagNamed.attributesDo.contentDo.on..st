actions
writeTagNamed: tagName attributesDo: attributesBlock contentDo: contentBlock on: aWriteStream
	self writeStartTagNamed: tagName attributesDo: attributesBlock on: aWriteStream.
	contentBlock value: aWriteStream.
	self writeEndTagNamed: tagName on: aWriteStream
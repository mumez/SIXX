actions
writeStartTagNamed: tagName attributesDo: block on: wStr
	wStr nextPut: $<;
		nextPutAll: tagName;
		space.
	block value: wStr.
	wStr nextPut: $>.
	
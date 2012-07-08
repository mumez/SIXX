actions
writeEndTagNamed: tagName on: wStr
	wStr nextPutAll: '</';
		nextPutAll: tagName;
		nextPut: $>.

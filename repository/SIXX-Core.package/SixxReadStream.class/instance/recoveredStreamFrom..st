private-recovery
recoveredStreamFrom: aStream 
	| contents objectTagName objectTagStart objectTagEnd startIndexes endIndexes recoverStream  |
	contents := aStream contents.
	objectTagName := SixxConstants current objectTagName.
	objectTagStart := '<', objectTagName.
	objectTagEnd := SixxXmlUtil contentsWithEndTagNamed: objectTagName.

	startIndexes := self findStringIndexes: objectTagStart from: contents.
	endIndexes := self findStringIndexes: objectTagEnd from: contents.

	recoverStream := ReadWriteStream with: (contents copyFrom: 1 to: (startIndexes last -1)).
	(startIndexes size - endIndexes size -1) timesRepeat: [recoverStream nextPutAll: objectTagEnd].
	recoverStream nextPutAll: (SixxConstants current sixxEndTag).

	^ recoverStream reset
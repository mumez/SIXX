actions
writeXmlText: aString on: aWriteStream 
	self settings useCDATA
		ifTrue: [aWriteStream nextPutAll: '<![CDATA['.
			aWriteStream nextPutAll: aString.
			aWriteStream nextPutAll: ']]>']
		ifFalse: [self convertWriteXmlText: aString on: aWriteStream].
	^aWriteStream
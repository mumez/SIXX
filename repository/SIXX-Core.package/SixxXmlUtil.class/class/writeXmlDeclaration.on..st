actions
writeXmlDeclaration: aString on: wStr
	wStr nextPutAll: SixxConstants current xmlDeclaration.
	2
		timesRepeat: [wStr nextPut: Character cr.
			wStr nextPut: Character lf].
	wStr nextPutAll: aString.

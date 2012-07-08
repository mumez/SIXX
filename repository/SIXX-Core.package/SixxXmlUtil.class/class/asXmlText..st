actions
asXmlText: aString 
	|  wStr |
	wStr := WriteStream
				on: (String new: aString size).
	^(self writeXmlText: aString on: wStr) contents
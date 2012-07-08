actions
contentsWithXmlDeclaration: aString 
	| wStr |
	wStr := WriteStream
				on: (String new: 1024).
	self writeXmlDeclaration: aString on: wStr.
	^ wStr contents
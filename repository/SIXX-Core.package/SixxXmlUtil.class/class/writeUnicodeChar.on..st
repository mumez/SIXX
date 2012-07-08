private
writeUnicodeChar: aCharacter on: aWriteStream 
	self settings useNCR
		ifTrue: [aWriteStream nextPutAll: '&#';
				 nextPutAll: (SixxPortableUtil charCodeOf: aCharacter) printString;
				 nextPut: $;]
		ifFalse: [aWriteStream nextPut: aCharacter]
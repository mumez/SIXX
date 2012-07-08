private
convertWriteXmlText: aString on: aWriteStream
	| cDict wStr |
	cDict := self convertCharDict.
	wStr := aWriteStream.
	aString
		do: [:eachChar | 
			| val | 
			val := (SixxPortableUtil charCodeOf: eachChar).
			val >= 127
				ifTrue: [self writeUnicodeChar: eachChar on: wStr]
				ifFalse: [| conv | 
					conv := cDict
								at: val
								ifAbsent: [].
					conv isNil
						ifTrue: [wStr nextPut: eachChar]
						ifFalse: [wStr nextPutAll: conv]]].
	^wStr
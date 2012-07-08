private
parseStream: aStream 
	| root str recoverTried |
	(aStream isNil or: [aStream size = 0])	ifTrue: [^nil].
	str := aStream.
	recoverTried := false.
	[root := SixxXmlUtil parseXml: str]
		on: SixxXmlParseError do: [:ex | (SixxSettings useRecoveryRead and: [recoverTried not])
			ifTrue: 
				[str := self recoveredStreamFrom: str.
				recoverTried := true.
				ex retry]
			ifFalse: [ex pass]].
	self checkSixxElement: root.
	^self initialElementsFrom: root
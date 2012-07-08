*sixx-inout-common-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| rawStr col |
	rawStr := ReadStream
				on: (SixxXmlUtil characterDataFrom: sixxElement).
	col := rawStr peek = $#
				ifTrue: [Array readSixxContentStringFrom: rawStr]
				ifFalse: [self readShortHexFrom: rawStr].
	^ self withAll: col
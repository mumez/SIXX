override hooks
createInstanceOf: aClass withSixxElement: sixxElement 
	| literalString |
	literalString := SixxXmlUtil
				characterDataFrom: ((SixxXmlUtil elementsFrom: sixxElement)
						at: 1).
	^ aClass readFrom: (ReadStream on: literalString)
private
checkSixxElement
	| detected |
	detected := SixxConstants setCurrentConstantsBy: parser.
	detected isNil
		ifTrue: [SixxInvalidFormat signal: 'unexpected element: ' , (SixxXmlUtil nameFrom: parser) printString]
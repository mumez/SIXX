private
checkSixxElement: sixxElement 
	| detected |
	detected := SixxConstants setCurrentConstantsBy: sixxElement.
	detected isNil
		ifTrue: [SixxInvalidFormat signal: 'unexpected element: ' , (SixxXmlUtil nameFrom: sixxElement) printString]
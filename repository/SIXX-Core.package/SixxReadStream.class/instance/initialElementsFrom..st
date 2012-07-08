private
initialElementsFrom: rootOrElements 
	| extractedName |
	extractedName := SixxXmlUtil nameFrom: rootOrElements.
	^ (SixxConstants rootTagNames includes: extractedName asString)
		ifTrue: [SixxXmlUtil elementsFrom: rootOrElements]
		ifFalse: [OrderedCollection with: rootOrElements] "we allow no root tag"
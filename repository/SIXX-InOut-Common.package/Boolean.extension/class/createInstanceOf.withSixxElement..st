*sixx-inout-common-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| read |
	read := SixxXmlUtil characterDataFrom: sixxElement.
	^ read = 'true'
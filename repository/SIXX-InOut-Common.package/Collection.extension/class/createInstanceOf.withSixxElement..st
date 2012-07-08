*sixx-inout-common-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	"override to use #createMixedFieldsInstanceOf:withSixxElement: if you have extra inst vars"
	^ self
		sixxNew: aClass
		size: (SixxXmlUtil elementsFrom: sixxElement) size
		withSixxElement: sixxElement
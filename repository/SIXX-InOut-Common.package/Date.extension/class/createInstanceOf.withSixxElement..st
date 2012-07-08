*sixx-inout-common-instance creation
createInstanceOf: aClass withSixxElement: sixxElement
	^self readSixxContentStringFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement))
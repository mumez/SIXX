*sixx-inout-squeak-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| col |
	col := Array readFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement)).
	^self withAll: col
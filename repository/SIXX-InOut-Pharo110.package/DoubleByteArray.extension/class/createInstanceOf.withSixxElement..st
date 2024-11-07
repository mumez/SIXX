*SIXX-InOut-Pharo110
createInstanceOf: aClass withSixxElement: sixxElement 
	| col |
	col := Array readFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement)).
	^ self withAll: col
*SIXX-InOut-Pharo110-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| col |
	col := Array readFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement)).
	^ col asIntegerArray
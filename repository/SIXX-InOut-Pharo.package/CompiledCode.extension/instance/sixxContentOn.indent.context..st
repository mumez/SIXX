*SIXX-InOut-Pharo
sixxContentOn: aStream indent: level context: dictionary
	SixxInvalidSerialization signal: self class name context: dictionary.
	SixxXmlUtil writeXmlText: self printString on: aStream
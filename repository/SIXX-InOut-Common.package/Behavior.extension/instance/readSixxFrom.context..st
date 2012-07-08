*sixx-inout-common-instance creation
readSixxFrom: xmlStringOrStream context: aDictionary 
	| topElem |
	topElem := SixxXmlUtil parseXml: xmlStringOrStream.
	^ self readSixxFromSixxElement: topElem context: aDictionary
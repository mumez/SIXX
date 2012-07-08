actions
parseXml: xmlStringOrStream 
	^[self parserAdapter parseXml: xmlStringOrStream] on: Error
		do: [:ex | SixxPortableUtil signalException: (SixxXmlParseError originalError: ex)]
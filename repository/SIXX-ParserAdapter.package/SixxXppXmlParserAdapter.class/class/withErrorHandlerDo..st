private
withErrorHandlerDo: aBlock 
	aBlock 
		on: Error
		do: [ :ex | SixxPortableUtil signalException: (SixxXmlParseError originalError: ex) ]
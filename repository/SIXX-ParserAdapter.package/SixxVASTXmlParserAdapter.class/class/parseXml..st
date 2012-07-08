actions
parseXml: xmlStringOrStream 
	| parser |
	parser := (self environment at: #AbtXmlDOMParser) newNonValidatingParser.
	^ (parser parse: xmlStringOrStream) rootTag
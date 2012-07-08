accessing
parserAdapter
	parserAdapter isNil
		ifTrue: [parserAdapter := self detectAdapterClassUsing: #(
						#(XMLNodeWithChildren SixxYaxo2XmlParserAdapter)
						#(XMLDOMParser SixxYaxoXmlParserAdapter)
						#(XMLPullParser SixxXppXmlParserAdapter)
						#(VWXMLXMLParser SixxVwXmlParserAdapter)
						#(AbtXmlDOMParser SixxVASTXmlParserAdapter)
					)
	].
	^ parserAdapter
accessing
parserAdapter
	parserAdapter isNil
		ifTrue: [parserAdapter := self detectAdapterClassUsing: #(
						#(XMLParserTokenizer SixxYaxo3XmlParserAdapter)
						#(XMLNodeWithChildren SixxYaxo2XmlParserAdapter)
						#(XMLDOMParser SixxYaxoXmlParserAdapter)
						#(XMLPullParser SixxXppXmlParserAdapter)
						#(VWXMLXMLParser SixxVwXmlParserAdapter)
						#(AbtXmlDOMParser SixxVASTXmlParserAdapter)
					)
	].
	^ parserAdapter
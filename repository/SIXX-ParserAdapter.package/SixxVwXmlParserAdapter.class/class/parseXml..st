actions-parse
parseXml: xmlStringOrStream 
	| stream parser |
	stream := xmlStringOrStream isString ifFalse: [xmlStringOrStream]
				ifTrue: [ReadStream on: xmlStringOrStream].
	parser := (self environment at: #VWXMLXMLParser) on: stream.
	parser validate: false.
	^ parser scanDocument root
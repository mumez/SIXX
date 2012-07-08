actions
parseXml: xmlStringOrStream 
	| parser |
	parser := XMLPullParser parse: xmlStringOrStream.
	self withErrorHandlerDo: [ parser consumeStartDocument ].
	^ parser
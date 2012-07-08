sixx-instance creation
createInstanceOf: aClass withSixxElement: sixxElement
	| stream inst |
	stream := ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement).
	inst := self new.
	inst varTime: (Time readSixxContentStringFrom: (stream upTo: $;) readStream).
	inst varString: (stream upTo: $;).
	inst varNumber: (stream upTo: $;) asNumber.
	^inst
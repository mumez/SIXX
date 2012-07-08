tests
testXmlDeclaration
	SixxConstants initialize.
	self
		should: [SixxConstants current xmlDeclaration = '<?xml version="1.0" encoding="utf-8"?>'].
	SixxConstants current xmlVersion: '3.0'.
	SixxConstants current xmlEncoding: 'sjis'.
	self
		should: [SixxConstants current xmlDeclaration = '<?xml version="3.0" encoding="sjis"?>']
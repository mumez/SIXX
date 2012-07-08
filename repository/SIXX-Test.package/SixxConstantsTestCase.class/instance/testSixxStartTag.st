tests
testSixxStartTag
	SixxConstants initialize.
	self
		should: [SixxConstants current sixxStartTag = '<sixx sixx.version="1.0">'].
	SixxConstants current sixxVersion: '2.0'.
	self
		should: [SixxConstants current sixxStartTag = '<sixx sixx.version="2.0">']
tests
testInitialize
	SixxConstants initialize.
	self
		should: [SixxConstants current xmlVersion = '1.0'].
	self
		should: [SixxConstants current xmlEncoding = 'utf-8'].
	self
		should: [SixxConstants current sixxVersion = '1.0']
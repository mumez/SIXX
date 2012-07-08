running
tearDown
	SixxConstants initialize.
	SixxConstants current xmlVersion: self oldSixxConstants xmlVersion.
	SixxConstants current xmlEncoding: self oldSixxConstants xmlEncoding.
	SixxConstants current sixxVersion: self oldSixxConstants sixxVersion
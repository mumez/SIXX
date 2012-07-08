actions
writeBasicSixxAttributesOf: object on: aStream name: nameString

	| constants |
	constants := SixxConstants current.
	self writeAttribute: constants nameTagName value: nameString on: aStream.
	self writeAttribute: constants typeTagName value: object sixxType on: aStream.
	self settings useEnvironment
				ifTrue: [self
						writeAttribute: constants envTagName
						value: object sixxEnv
						on: aStream]
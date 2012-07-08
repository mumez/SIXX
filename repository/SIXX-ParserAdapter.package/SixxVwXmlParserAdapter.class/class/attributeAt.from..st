actions-parse
attributeAt: attributeName from: sixxElement
	| attr |
	attr := sixxElement attributes
				detect: [:each | each key type = attributeName]
				ifNone: [^ nil].
	^ attr value
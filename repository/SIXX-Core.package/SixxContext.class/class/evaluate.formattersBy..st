actions-formatter
evaluate: block  formattersBy: registeringBlock
	| formatters |
	formatters := OrderedCollection new.
	registeringBlock value: formatters.
	^self applyFormatters: formatters while: block 
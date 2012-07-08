utility
useReducedTags: aBoolean 
	"SixxConstants useReducedTags: true"
	"SixxConstants useReducedTags: false"
	self
		current: (aBoolean
				ifTrue: [SixxReducedConstants new]
				ifFalse: [self new])
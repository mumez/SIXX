utility
useCompactTags: aBoolean 
	"SixxConstants useCompactTags: true"
	"SixxConstants useCompactTags: false"
	self
		current: (aBoolean
				ifTrue: [SixxCompactConstants new]
				ifFalse: [self new])
exceptionDescription
description
	"Return a textual description of the exception."
	self formatterName isNil ifTrue: [ ^super description , ': ', 'Formatter cannot be found in the image'].
	^ super description , ': ' , self formatterName
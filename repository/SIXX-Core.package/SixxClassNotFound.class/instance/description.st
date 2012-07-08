exceptionDescription
description
	"Return a textual description of the exception."
	self className isNil ifTrue: [ ^super description , ': ', 'Type cannot be detected from XML'].
	^ super description , ': ' , self className
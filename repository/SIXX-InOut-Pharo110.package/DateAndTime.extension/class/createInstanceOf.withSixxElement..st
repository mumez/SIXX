*SIXX-InOut-Pharo110-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 

	"For old format"
	(SixxXmlUtil hasSubElementsFrom: sixxElement) ifTrue: [
		^super createInstanceOf: aClass withSixxElement: sixxElement
	].

	^ self readSixxContentStringFrom: (ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement))
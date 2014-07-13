*sixx-inout-pharo-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 

	"For old format"
	| stream |
	(SixxXmlUtil hasSubElementsFrom: sixxElement ) ifTrue: [
		^super createInstanceOf: aClass withSixxElement: sixxElement
	].

	stream := ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement).
	^self readSixxContentStringFrom: stream
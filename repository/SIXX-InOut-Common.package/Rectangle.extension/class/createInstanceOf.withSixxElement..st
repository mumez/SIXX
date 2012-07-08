*sixx-inout-common-instance creation
createInstanceOf: aClass withSixxElement: sixxElement 
	| readStr origin corner |

	"For old format"
	(SixxXmlUtil hasSubElementsFrom: sixxElement) ifTrue: [
		^super createInstanceOf: aClass withSixxElement: sixxElement
	].

	readStr := ReadStream on: (SixxXmlUtil characterDataFrom: sixxElement).
	origin := Point readSixxContentStringFrom: readStr.
	readStr upTo: $:; upTo: Character space. "For portability"
	corner := Point readSixxContentStringFrom: readStr.
	^origin corner: corner
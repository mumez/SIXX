utility
setCurrentConstantsBy: sixxElement
	| extrancedName constantClass |
	extrancedName := (SixxXmlUtil nameFrom: sixxElement) asString.

	constantClass := self constantsDetectionMapByRoot at: extrancedName ifAbsent:[
			self constantsDetectionMap at: extrancedName ifAbsent:[]
	].

	"no detected constants"
	constantClass isNil ifTrue: [^nil].

	^self current: constantClass new.

	
*sixx-inout-common-private
newInstanceFromSixxElement: sixxElement context: aDictionary 
	| class formatter inst elemId newInst |
	class := self classFromSixxElement: sixxElement context: aDictionary.
	class isNil ifTrue: [^nil].
	elemId := self idFromSixxElement: sixxElement.
	formatter := self formatterFromSixxElement: sixxElement for: class context: aDictionary.
	formatter isNil ifTrue: [
		inst :=  class createInstanceOf: class withSixxElement: sixxElement.
		aDictionary at: elemId put: inst.
		inst initializeFromSixxElement: sixxElement context: aDictionary.
	] ifFalse: [
		inst :=  formatter createInstanceOf: class withSixxElement: sixxElement.
		aDictionary	at: elemId put: inst.
		formatter initialize: inst fromSixxElement: sixxElement context: aDictionary.
	].
	inst sixxInitialize.
	newInst := inst sixxReadValue.
	aDictionary	at: elemId put: newInst.
	(inst isSixxShapeChanger and: [inst circularReference])
		ifTrue: [inst sixxBecomeTo: newInst].
	^ newInst
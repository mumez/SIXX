*sixx-inout-squeak-instance creation
sixxFamilyName: familyName size: size emphasized: emphasisCode

	(self respondsTo: #familyName:pointSize:emphasis:) ifFalse: [
		| inst |
		inst := self family: familyName size: size.
		inst emphasis: emphasisCode.
		^inst "for 3.8"
	].

	^self familyName: familyName pointSize: size emphasis: emphasisCode
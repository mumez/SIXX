override hooks
sixxInstVarNamed: varName put: value
	
	"override"
	"You can override this for setting values to the shape changed object like:
		(YourShapeChanger >> sixxInstVarNamed: varName put: value)
			varName == #oldNamedVar1 ifTrue: [^self attributesMap at: #renamedAtt1 put: value].
			super sixxInstVarNamed: varName put: value "

	self attributesMap at: varName asString put: value
*SIXX-InOut-Pharo110-private
sixxInstVarNamed: varName put: childInst
	"For old format"
	varName = 'jdn' ifTrue: [^ julianDayNumber := childInst ].
	super sixxInstVarNamed: varName put: childInst
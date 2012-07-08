actions
classAt: localClassName in: environmentQualifier 
	"#Squeak Specific#"
	| foundClass classNameSymbol |
	foundClass := nil.
	classNameSymbol := self mappedClassNameFor: localClassName asSymbol.
	
	foundClass := self settings useEnvironment
				ifTrue: [| env | 
					env := environmentQualifier isNil
								ifTrue: [Smalltalk]
								ifFalse: ["Currently Squeak does not support  
									namespace, so just ignore"
									Smalltalk].
					env
						at: classNameSymbol
						ifAbsent: []]
				ifFalse: [Smalltalk
						at: classNameSymbol
						ifAbsent: []].
	^ foundClass
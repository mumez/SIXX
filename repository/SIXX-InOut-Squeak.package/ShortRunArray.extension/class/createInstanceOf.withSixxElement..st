*sixx-inout-squeak-instance creation
createInstanceOf: aClass withSixxElement: sixxElement
	| rawStr runsAndValues |
	rawStr := ReadStream
				on: (SixxXmlUtil characterDataFrom: sixxElement).
	runsAndValues := Array readSixxContentStringFrom: rawStr.
	^ self runs: runsAndValues first values: runsAndValues last
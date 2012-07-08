instance creation
signal: className element: xmlElement context: dictionary 
	| inst |
	inst := self new.
	inst className: className.
	inst element: xmlElement.
	inst context: dictionary.
	^SixxPortableUtil signalException: inst
instance creation
readOnlyFileNamed: fileName 
	^ self on: (SixxPortableUtil readFileStreamNamed: fileName)
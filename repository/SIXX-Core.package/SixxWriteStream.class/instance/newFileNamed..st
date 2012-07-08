initializing
newFileNamed: fileName 
	stream := SixxPortableUtil writeFileStreamNamed: fileName.
	self initialize
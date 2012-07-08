private
sixxFrom: object 
	| srs conts |
	srs := SixxWriteStream on: (WriteStream on: (String new: 16)).
	srs nextPut: object.
	conts := srs contents.
	srs close.
	^ conts
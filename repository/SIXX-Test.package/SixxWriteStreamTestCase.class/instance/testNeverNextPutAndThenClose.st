tests
testNeverNextPutAndThenClose
	| st wst expected |
	expected := ''.
	st := WriteStream on: String new.
	wst := SixxWriteStream on: st.
	wst close.
	self
		should: [st contents = expected]
tests
testReadSixxForDateAndTimeOldFormat
	"self debug: #testReadSixxForDateAndTimeOldFormat"
	| sixxString |
	sixxString :=   '<sixx.object sixx.id="0" sixx.type="DateAndTime" sixx.env="Smalltalk" >
	<sixx.object sixx.id="1" sixx.name="seconds" sixx.type="SmallInteger" sixx.env="Smalltalk" >68952</sixx.object>
	<sixx.object sixx.id="2" sixx.name="offset" sixx.type="Duration" sixx.env="Smalltalk" >
		<sixx.object sixx.id="3" sixx.name="nanos" sixx.type="SmallInteger" sixx.env="Smalltalk" >0</sixx.object>
		<sixx.object sixx.idref="3" sixx.name="seconds" ></sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.name="jdn" sixx.type="SmallInteger" sixx.env="Smalltalk" >2454082</sixx.object>
	<sixx.object sixx.idref="3" sixx.name="nanos" ></sixx.object>
</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString) printString
				= (DateAndTime year: 2006 day: 346 hour: 19 minute: 9 second: 12 offset: Duration zero) printString]
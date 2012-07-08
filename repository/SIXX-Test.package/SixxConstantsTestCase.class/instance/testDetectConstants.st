tests
testDetectConstants
	"SixxConstantsTestCase debug: #testDetectConstants"
	| sixx rixx cixx |
	sixx :=  '<sixx><sixx.object sixx.id="0" sixx.type="Array" ><sixx.object sixx.id="1" sixx.type="SmallInteger" >1</sixx.object></sixx.object></sixx>'.
	rixx :=  '<rixx><object id="0" type="Array" ><object id="1" type="SmallInteger" >1</object></object></rixx>'.
	cixx :=  '<cixx><o i="0" t="Array" ><o i="1" t="SmallInteger" >1</o></o></cixx>'.


	SixxConstants setCurrentConstantsBy: (SixxXmlUtil parseXml: sixx).
	self should: [SixxConstants current class = SixxConstants].

	SixxConstants setCurrentConstantsBy: (SixxXmlUtil parseXml: rixx).
	self should: [SixxConstants current class = SixxReducedConstants].

	SixxConstants setCurrentConstantsBy: (SixxXmlUtil parseXml: cixx).
	self should: [SixxConstants current class = SixxCompactConstants].
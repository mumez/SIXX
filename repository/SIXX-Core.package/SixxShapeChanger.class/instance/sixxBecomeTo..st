actions
sixxBecomeTo: newInst
	"override if your object does not support (oneway) become - in that case, use proxy pattern"
	SixxPortableUtil becomeFrom: self to: newInst 
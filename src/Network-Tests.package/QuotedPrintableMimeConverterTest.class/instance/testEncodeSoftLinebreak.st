testing
testEncodeSoftLinebreak

	| original encoded |

	original :=
		'Cowards die many times before their deaths; The valiant never taste of death but once.
Of all the wonders that I yet have heard, it seems to me most strange that men should fear;
Seeing that death, a necessary end, will come when it will come'.

	encoded :=
		'Cowards die many times before their deaths; The valiant never taste of dea=
th but once.=0D=0AOf all the wonders that I yet have heard, it seems to me most strange that=
 men should fear;=0D=0ASeeing that death, a necessary end, will come when it will come'.

	self assert: (self encode: original) equals: encoded.
	
	self assert: (self decode: encoded) equals: original
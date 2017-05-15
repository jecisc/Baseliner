utils
printPackageSignatureOn: aStream
	| ref |
	(self workingCopy isNotNil and: [ self workingCopy ancestors isNotEmpty ]) ifFalse: [ ^ self ].
	
	aStream
		<< $(;
		<< (ref := GoferVersionReference name: self workingCopy ancestors first name) author;
		<< $.;
		<< ref versionNumber;
		<< $)
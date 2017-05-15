printing
printOn: aStream
	self name ifNil: [ ^ self ].
	self flag: #TODO.	"If there is an integration to Iceberg later, the branch should be displayed."
	
	self isDirty ifTrue: [ aStream << '* ' ].
		
	aStream << self name baselineBaseName.
	
	self currentVersion printVersionOn: aStream.
	
	self printPackageSignatureOn: aStream
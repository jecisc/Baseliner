printing
printOn: aStream
	self name ifNil: [ ^ self ].
	self flag: #TODO.	"Manage dirty"
	"self isDirty
		ifTrue: [ aStream nextPutAll: '* ' ]."
	aStream << self name baselineBaseName.
	self branch
		ifNotEmpty: [ :branchString | 
			aStream
				<< '.';
				<< branchString ].
	self flag: #TODO.	"Manage current version"
	"(cv := self currentVersion) notNil
		ifTrue: [ aStream space;<< cv versionString ]."
	self packageSignature
		ifNotEmpty: [ :sign | 
			aStream
				<< $(;
				<< sign;
				<< $) ]
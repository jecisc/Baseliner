printing
printOn: aStream
	self isDirty ifTrue: [ aStream << '* ' ].
	
	self workingCopy ifNil: [ 
			aStream
				<< self packageName;
				<< ' ---' ]
		ifNotNil: [ :wc| 
			wc ancestry ancestors ifNotEmpty: [ :ancestors | 
				self flag: #TODO. "Manage this when courage"
				"	| loadedPkgName refString |
					loadedPkgName := ancestors first name.
					(refString := self extractPackageSignatureFrom: wc) notEmpty
						ifTrue: [ refString := '[' , refString , ']' ].
					loadedPkgName = self name
						ifTrue: [ aStream nextPutAll: self name ]
						ifFalse: [ 
							(self compareWorkingCopyNamed: loadedPkgName using: #<=)
								ifTrue: [ refString := Text string: refString attributes: TextColor red ].
							aStream
								<< self name;
								<< refString ] "] ]
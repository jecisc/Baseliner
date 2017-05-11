accessing
branch
	^ branch ifNil: [ branch := self extractBranch ]
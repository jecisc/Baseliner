accessing
packages
	"Return the list of dependent packages for the last baseline"

	^ packages ifNil: [ packages := self computedPackages ]
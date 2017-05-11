instance creation
reset
	<script>
	| instance |
	Instance ifNil: [ ^ self ].
	instance := Instance.
	Instance := nil.
	instance unregister
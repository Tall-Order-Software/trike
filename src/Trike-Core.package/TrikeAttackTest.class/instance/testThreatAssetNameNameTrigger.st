event handling
testThreatAssetNameNameTrigger
	| threat |
	threat := readCleartext attacks any.
	threat
		when: #name
		send: #receiveEvent:
		to: self
		with: #name.
	cleartext name: 'unencrypted message'.
	self
		should: [receivedEvents includes: #name]
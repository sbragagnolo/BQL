generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(78 '--' 2) #(74 'Date' 53) #(74 'Now' 44) #(74 'and' 24) #(74 'at' 59) #(74 'between' 41) #(74 'buffer' 11) #(74 'by' 62) #(74 'connection' 38) #(74 'create' 26) #(74 'days' 45) #(74 'delete' 7) #(74 'domain' 56) #(74 'ether' 49) #(74 'false' 73) #(74 'finney' 52) #(74 'from' 60) #(74 'hours' 48) #(74 'in' 54) #(74 'intersect' 58) #(74 'is' 51) #(74 'join' 68) #(74 'left' 67) #(74 'like' 40) #(74 'limit' 63) #(74 'minus' 55) #(74 'minutes' 47) #(74 'not' 36) #(74 'null' 39) #(74 'on' 66) #(74 'or' 18) #(74 'order' 65) #(74 'right' 64) #(74 'seconds' 50) #(74 'select' 13) #(74 'szabo' 43) #(74 'true' 73) #(74 'union' 57) #(74 'weeks' 46) #(74 'wei' 42) #(74 'where' 61) #(74 'years' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
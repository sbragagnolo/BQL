generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(76 '--' 2) #(72 'Date' 55) #(72 'Now' 51) #(72 'and' 24) #(72 'between' 39) #(72 'buffer' 17) #(72 'by' 60) #(72 'create' 10) #(72 'days' 43) #(72 'delete' 7) #(72 'domain' 59) #(72 'ether' 47) #(72 'false' 71) #(72 'finney' 42) #(72 'from' 52) #(72 'hours' 46) #(72 'in' 53) #(72 'intersect' 57) #(72 'is' 49) #(72 'join' 66) #(72 'left' 65) #(72 'like' 50) #(72 'limit' 61) #(72 'minus' 54) #(72 'minutes' 45) #(72 'not' 38) #(72 'null' 37) #(72 'on' 64) #(72 'or' 18) #(72 'order' 63) #(72 'right' 62) #(72 'seconds' 48) #(72 'select' 33) #(72 'szabo' 41) #(72 'true' 71) #(72 'union' 56) #(72 'weeks' 44) #(72 'wei' 36) #(72 'where' 58) #(72 'years' 9))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
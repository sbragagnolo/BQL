generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(76 '--' 2) #(72 'and' 24) #(72 'at' 62) #(72 'between' 50) #(72 'buffer' 33) #(72 'by' 52) #(72 'connection' 57) #(72 'create' 11) #(72 'days' 44) #(72 'delete' 7) #(72 'domain' 53) #(72 'ether' 48) #(72 'false' 71) #(72 'finney' 51) #(72 'from' 58) #(72 'hours' 47) #(72 'in' 60) #(72 'intersect' 55) #(72 'is' 37) #(72 'join' 66) #(72 'left' 64) #(72 'like' 39) #(72 'limit' 43) #(72 'minus' 59) #(72 'minutes' 46) #(72 'not' 35) #(72 'null' 38) #(72 'on' 67) #(72 'or' 18) #(72 'order' 63) #(72 'right' 61) #(72 'seconds' 49) #(72 'select' 26) #(72 'szabo' 42) #(72 'true' 71) #(72 'union' 54) #(72 'weeks' 45) #(72 'wei' 41) #(72 'where' 65) #(72 'years' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
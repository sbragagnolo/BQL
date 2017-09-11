generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(65 '--' 14) #(61 'Date' 41) #(61 'Now' 33) #(61 'and' 20) #(61 'buffer' 44) #(61 'by' 50) #(61 'create' 48) #(61 'days' 37) #(61 'delete' 27) #(61 'domain' 53) #(61 'ether' 34) #(61 'false' 60) #(61 'finney' 32) #(61 'from' 54) #(61 'hours' 38) #(61 'in' 55) #(61 'like' 35) #(61 'limit' 45) #(61 'minutes' 42) #(61 'or' 15) #(61 'order' 51) #(61 'seconds' 40) #(61 'select' 49) #(61 'szabo' 29) #(61 'true' 60) #(61 'weeks' 36) #(61 'wei' 30) #(61 'where' 52) #(61 'years' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
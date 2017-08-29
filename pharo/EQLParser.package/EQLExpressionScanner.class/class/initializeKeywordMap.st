generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(66 'Date' 55) #(66 'Now' 48) #(66 'and' 39) #(66 'buffer' 49) #(66 'by' 57) #(66 'create' 53) #(66 'days' 41) #(66 'delete' 11) #(66 'domain' 50) #(66 'ether' 45) #(66 'false' 65) #(66 'finney' 37) #(66 'from' 54) #(66 'hours' 42) #(66 'in' 58) #(66 'like' 38) #(66 'limit' 56) #(66 'minutes' 46) #(66 'or' 36) #(66 'order' 60) #(66 'seconds' 44) #(66 'select' 51) #(66 'szabo' 35) #(66 'true' 65) #(66 'weeks' 40) #(66 'wei' 32) #(66 'where' 59) #(66 'years' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
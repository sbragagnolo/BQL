generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(76 'Date' 41) #(76 'Now' 42) #(76 'and' 52) #(76 'buffer' 70) #(76 'by' 54) #(76 'create' 63) #(76 'days' 46) #(76 'delete' 59) #(76 'domain' 66) #(76 'ether' 50) #(76 'false' 75) #(76 'finney' 53) #(76 'from' 67) #(76 'hours' 49) #(76 'in' 64) #(76 'like' 37) #(76 'limit' 45) #(76 'minutes' 48) #(76 'or' 40) #(76 'order' 58) #(76 'seconds' 51) #(76 'select' 61) #(76 'szabo' 44) #(76 'true' 75) #(76 'weeks' 47) #(76 'wei' 43) #(76 'where' 65) #(76 'years' 13))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(73 'and' 38) #(73 'by' 40) #(73 'create' 65) #(73 'days' 44) #(73 'delete' 54) #(73 'domain' 61) #(73 'ether' 48) #(73 'false' 72) #(73 'finney' 51) #(73 'from' 64) #(73 'hours' 47) #(73 'in' 52) #(73 'like' 50) #(73 'minutes' 46) #(73 'or' 35) #(73 'order' 39) #(73 'seconds' 49) #(73 'select' 66) #(73 'stream' 67) #(73 'szabo' 42) #(73 'true' 72) #(73 'weeks' 45) #(73 'wei' 41) #(73 'where' 43) #(73 'years' 13))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
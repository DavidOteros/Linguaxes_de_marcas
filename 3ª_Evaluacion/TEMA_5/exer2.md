1. 
//money/associatedaccount[text()="20-A"]/../data/depossited/texst()
2. 
//data/currency/text()
3. 
//account/currentbalance[@currency="euros"]/../holder/@ID
4. //money/data[currency="Euros" and depositedamount/text()<25000]/..

Extract all information from money using "euro" with a value of less than 2500 euros.
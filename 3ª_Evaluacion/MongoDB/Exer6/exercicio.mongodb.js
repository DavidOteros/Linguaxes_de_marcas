// Select the database to use.
use('davidos');


// Insert a few documents into the sales collection.
db.getCollection('orders').drop()
db.getCollection('orders').insertMany([
    {
		"order": "o1",
		"year": 2022,
		"paid": "Y",
		"cost": {
			"price": 40,
			"currency": "NOK"
		},
		"items": [{
			"product": "p1",
			"colours": ["blue", "black"],
			"quantity": 15
		}],
		"delivery_days": 5
	},
	{
		"order": "o2",
		"year": 2022,
		"paid": "Y",
		"cost": {
			"price": 15,
			"currency": "EUR"
		},
		"items": [{
				"product": "p2",
				"colours": ["white"],
				"quantity": 4
			},
			{
				"product": "p3",
				"colours": ["white", "black"],
				"quantity": 1
			}
		],
		"delivery_days": 4
	},
	{
		"order": "o3",
		"year": 2020,
		"paid": "N",
		"cost": {
			"price": 35,
			"currency": "EUR"
		},
		"items": [{
			"product": "p3",
			"colours": ["blue", "black"],
			"quantity": 4
		}],
		"delivery_days": 4
	},
	{
		"order": "o4",
		"year": 2019,
		"paid": "Y",
		"cost": {
			"price": 18,
			"currency": "NOK"
		},
		"items": [{
				"product": "p2",
				"colours": ["pink", "black"],
				"quantity": 14
			},
			{
				"product": "p4",
				"colours": ["white"],
				"quantity": 1
			}
		],
		"delivery_days": 2
	},
	{
		"order": "o5",
		"year": 2022,
		"paid": "Y",
		"cost": {
			"price": 25,
			"currency": "NOK"
		},
		"items": [{
			"product": "p1",
			"quantity": 15
		}],
		"delivery_days": 3
	}
])

//Retrieve all documents in the collection.
db.getCollection('orders').find({})

//Retrieve all documents that contain paid orders (the "paid" field is "Y").
db.getCollection('orders').find({paid:"Y"})

//Retrieve all documents that contain paid orders and the orders are from before 2020.
db.getCollection('orders').find({paid:"Y", year:{$lt:2020}})

//Retrieve all documents that contain unpaid orders or whose orders are from before 2020.

db.getCollection('orders').find({
    $or:[
        {"paid":"N"},
        {"year":{$lt:2020}}
    ]
})

//Retrieve all documents that contain orders whose price is in NOK.

db.getCollection('orders').find({"cost.currency":"NOK"})

//Retrieve all documents that contain orders whose price is less than 20 NOK.

db.getCollection('orders').find({"cost.currency":"NOK", "cost.price":{$lt:20}})


//Retrieve all documents with orders that contain product "p2".

db.getCollection('orders').find({"items.product":"p2"})



//Retrieve all documents with orders that contain products whose quantity is less than 15.

db.getCollection('orders').find({"items.quantity":{$lt:15}})


//Retrieve all documents with orders that contain products blue.

db.getCollection('orders').find({"items.colours":"blue"})

//Retrieve order and year of all documents

db.getCollection('orders').find({},{"order":1, "year":1})


//Retrieve order, year and delivery days of documents of year 2022.

db.getCollection('orders').find({"year":2022},{"order":1, "year":1, "delivery_days":1})





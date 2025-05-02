// Select the database to use.
use('davidos');

//Ejemplo con script y ejercicio a la vez 
db.getCollection('transactions').drop()
db.createCollection('transactions')

//Insertamos uno en la nueva lista "customers"
db.getCollection('customers').insertOne({
    "phone": "032345432134",
    "BusinessType": ["Sell", "Sugar", "Drinks"],
    "Reference": 100,
    "Company": "Coca-Cola"
})

//Insertamos uno en la nueva lista "transactions"
db.getCollection('transactions').insertMany([
    {
    "Id": 100,
    "Name": "John",
    "TransactionId": "tran1",
    "Transaction": [
        {
            "ItemId": "a100",
            "price": 200
        },
        {
            "ItemId": "a110",
            "price": 200
        }
    ],
    "Subscriber": true,
    "Payment": {
        "Type": "Credit-Card",
        "Total": 400,
        "Success": true
    },
    "Note": "1st Complete Record"
},
{
    "Id": 101,
    "Name": "Tom",
    "TransactionId": "tran2",
    "Transaction": [
        {
            "ItemId": "a100",
            "price": 200
        },
        {
            "ItemId": "a110",
            "price": 200
        }
    ],
    "Subscriber": true,
    "Payment": {
        "Type": "Debit-Card",
        "Total": 400,
        "Success": true
    },
    "Note": null
},
{
    "Id": 102,
    "Name": "Margaret",
    "TransactionId": "tran3",
    "Transaction": [
        {
            "ItemId": "a100",
            "price": 200
        },
        {
            "ItemId": "a110",
            "price": 200
        }
    ],
    "Subscriber": true,
    "Payment": {
        "Type": "Credit-Card",
        "Total": 400,
        "Success": true
    }
},
{
    "Id": 103,
    "Name": "Dylan",
    "TransactionId": "tran4",
    "Transaction": [
        {
            "ItemId": "a100",
            "price": 200
        },
        {
            "ItemId": "a110",
            "price": 200
        }
    ],
    "Subscriber": true,
    "Payment": null,
    "Note": "Payment is Null"
}
])

//Find a record in transactions where name is Tom

db.getCollection('transactions').find({"Name":"Tom"})

//Find a record in transactions where total payment amount is 400.

db.getCollection('transactions').find({"Payment.Total":400})


//Find a record in transactions collection where price is greater than 400

db.getCollection('transactions').find({"Transaction.Total":{"$gt":400}})


//Find a record in transactions collection where note is null or missing

db.getCollection('transactions').find({
    $or: [
        {"Note": null},
        {"Note":{"&$exists":false}}
    ]
})
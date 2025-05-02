// Select the database to use.
use('davidos');

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
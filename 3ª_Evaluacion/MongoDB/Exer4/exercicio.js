// Select the database to use.
use('davidos');

// Insert a few documents into the sales collection.
db.getCollection('library').drop()
db.getCollection('library').insertMany([
    {   
        "_id": 1,
        "title": "TCP/IP Illustrated",
        "author": {
            "surname": "Stevens",
            "name": "W."
        },
        "publisher": "Addison-Wesley",
        "price": 65.95
    },
    {
        "_id": 2,
        "title": "Advan Programming for Unix environment",
        "author": {
            "surname": "Stevens",
            "name": "W."
        },
        "publisher": "Addison-Wesley",
        "price": 65.95
    },
    {
        "_id": 3,
        "title": "Data on the Web",
        "author": [
            {
                "surname": "Abiteboul",
                "name": "Serge"
            },
            {
                "surname": "Buneman",
                "name": "Peter"
            },
            {
                "surname": "Suciu",
                "name": "Dan"
            }
        ],
        "publisher": "Morgan Kaufmann publishers",
        "price": 39.95
    },
    {
        "_id": 4,
        "title": "Economics of Technology for Digital TV",
        "editor": {
          "surname": "Gerbarg",
          "name": "Darcy",
          "membership": "CITI"
        },
        "publisher": "Kluwer Academic publishers",
        "price": 129.95
    }        
]);



//CONSULTAS:

db.getCollection('library').find()

//Search the titles of books whose author surname is 'Stevens'

db.getCollection('library').find({"author.surname":"Stevens"},{"title":1})

// Search the books whose price is greater than 20 euros.

db.getCollection('library').find({price:{$gt:20}})

// Search the books whose title contains the word Web.

db.getCollection('library').find({"title":{$regex : "Web"}})

db.getCollection('library').find({"title": /Web/})


// Search the books whose title contains the word Web or the word TV.

db.getCollection('library').find({
    $or:[
        {"title":{$regex:"Web"}},
        {"title":{$regex:"TV"}}
    ]       
})


db.getCollection('library').find({"title": /Web|TV/})


// Search the books whose title contains the word Web or the word TV (case insensitive)

db.getCollection('library').find({
    $or:[
        {"title":{$regex:"Web", $options: "i"}},
        {"title":{$regex:"TV", $options: "i"}}
    ]       
})

db.getCollection('library').find({"title": /Web|TV/i})


//Search the books whose title length is greater than 20 characters

db.getCollection('library').find({"title":{$regex:"\.{21}"}})

//Search the books whose price is 39.95, 65.95 or 80.95

db.getCollection('library').find({
    $or:[
        {"price":39.95},
        {"price":65.95},
        {"price":65.95},
    ]
})

//Outra opcion 
db.library.find({"price":{$in:[39.95,65.95,80.95]}});

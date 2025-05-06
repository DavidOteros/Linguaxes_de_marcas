// Select the database to use.
use('davidos');


db.getCollection('movies').drop()
db.createCollection('movies')


db.getCollection('movies').insertMany([
    {
        "title":"El Club de la Lucha",
        "writer": "Chuck Palahniuk",
        "year":1996,
        "actors":["Edward Norton Syns", "Brad Pitt"]
    },

    {
        "title":"Bullet Train",
        "writer": "Kotaro Isaka",
        "year":2010,
        "actors":["Joey King", "Brad Pitt"] 
    },
    {
        "title":"Matrix",
        "writer": "Hermanas Wachoski",
        "year":1999,
        "actors":["Keanu Reeves", "Brad Pitt", "Gloria Foster"]
    },
    {
        "title":"El señor de los anillos: La comunidad del anillo",
        "writer": "J.R.R. Tolkien",
        "year":2001,
        "actors":["Elijah Wood", "Vigo Mortensen", "Orlando Bloom"],
        "franchise":"El señor de los anillos"
    },
    {
        "title":"El señor de los anillos: Las dos torres",
        "writer": "J.R.R. Tolkien",
        "year":2002,
        "franchise":"El señor de los anillos"
    },
    {
        "title":"El señor de los anillos: El retorno del rey",
        "writer": "J.R.R. Tolkien",
        "year":2002,
        "franchise":"El señor de los anillos",
        "synopsis":"A film about a ring"
    },
    {
        "title":"Click"
    },
    {
        "title":"Salto al vacío"
    }
])

//Get all documents
db.getCollection('movies').find()

// Get all documents with writer set to "J.R.R. Tolkien"

//db.getCollection('movies').find({"writer":"J.R.R. Tolkien"})

//Get all documents where actors include "Brad Pitt"

//db.getCollection('movies').find({"actors":"Brad Pitt"})

// Get all documents with franchise set to "The Lord of the Rings"

// db.getCollection('movies').find({"franchise": "El señor de los anillos"})

// Get all movies released in the 90s

db.getCollection('movies').find({year:{"$gte":1990, "$lte":2000}})

// Get all movies released before the year 2000 or after 2010

db.getCollection('movies').find({
    $or: [
        {year:{"$lt":2000}},
        {year:{"$gt":2010}}
    ]
})


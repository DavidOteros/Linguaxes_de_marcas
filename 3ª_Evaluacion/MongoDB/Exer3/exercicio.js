// Select the database to use.
use('davidos');



db.getCollection('movies').insertMany([
    {
        "title":"El Club de la Lucha",
        "writer": "Chuck Palahniuk",
        "year":"1996",
        "actors":["Edward Norton Syns", "Brad Pitt"]
    },

    {
        "title":"Bullet Train",
        "writer": "Kotaro Isaka",
        "year":"2010",
        "actors":["Joey King", "Brad Pitt"] 
    },
    {
        "title":"Matrix",
        "writer": "Hermanas Wachoski",
        "year":"1999",
        "actors":["Keanu Reeves", "Brad Pitt", "Gloria Foster"]
    },
    {
        "title":"El señor de los anillos: La comunidad del anillo",
        "writer": "J.R.R. Tolkien",
        "year":"2001",
        "actors":["Elijah Wood", "Vigo Mortensen", "Orlando Bloom"],
        "franchise":"El señor de los anillos"
    },
    {
        "title":"El señor de los anillos: Las dos torres",
        "writer": "J.R.R. Tolkien",
        "year":"2002",
        "franchise":"El señor de los anillos"
    },
    {
        "title":"El señor de los anillos: El retorno del rey",
        "writer": "J.R.R. Tolkien",
        "year":"2002",
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
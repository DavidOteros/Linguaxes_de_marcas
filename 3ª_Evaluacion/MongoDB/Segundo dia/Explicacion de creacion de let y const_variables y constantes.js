//Ejemplo para enseñar constantes y variables
//Const e let valen para calquera tipo de dato 

const database="davidos"
const collection="persons"
let person2={"name":"Ana","surnames":"Riveiro Coello"}

// Select the database to use.
use(database);

db.getCollection(collection).drop()
db.getCollection(collection)
db.getCollection(collection).insertOne(
    {"name":"Alejandro Jesús"}
)
db.getCollection(collection).insertOne(person2)



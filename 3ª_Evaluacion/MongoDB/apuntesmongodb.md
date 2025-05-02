Mongo DB:
- No relational
- No SQL (not only)
- é unha base de datos documental
- Garda en formato BSON, un pouco máis comprimido que en ficheiros .json, pero nos non vamos ver diferencia ningunha entre trallar cun ou outro

- Instalar MongoDB for VS Code
- Nos vamos a utilizar os Playgrounds

Pasos:
1. Creamos unha base de datos(A base de datos xa as creou ela), vamos a traballar con porto 27025
2. MONGODB non hai táboas, hai collections e dentro temos o documento, unha coleccion componse de varios documentos(Documentos son equivalentes a las filas, y las colecciones a las tablas)
3. Para conectar, open form (el de laderecha y en host dbalumnos:27025 ), logo temos que autentificar o noso nome e o username, o password e a autentificacion. davidos
4. Use('davidos') --> A patir dese momento vamos utilizar esa base de datos
5. db.createCollection('people') --> así creamos unha colección

    Existe tamén unha segunda maneira 

poñer extensión como ".mongodb.js", senon igual non se pode executar

Se insertamos, un dato sen dar ningún nome xa se crea automáticamente a base de datos por exemplo:

db.persons.insertOne({
    "first-name":"Natalia",
    "surname-names": "Hernández Torres",
    "nacionalidad":"Algerian"
})

Xa crea automáticamente a base persons

Nunca usar insert, só insert one ou many

Os comentarios /* */ ou //

---

Para buscar:

db.getCollection('persons').find();

db.getCollection('persons').find({"first-name":"Francisco"})

$lt
$lte
$gt
$gte
$eq que é igual : eo valor
$ne
$in


Se no exame nos di que eplicitamente é crear unha colección, temos que facelo explicitamente con ese script 




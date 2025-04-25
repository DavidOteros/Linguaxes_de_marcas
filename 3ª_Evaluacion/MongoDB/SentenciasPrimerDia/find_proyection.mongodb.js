// Select the database to use.
use('davidos');

// Esto é  para que nos de o first-name de todos os usuarios da base de datos
db.getCollection('persons').find({}, {"first-name":0, "surnames":0})

//Para indicar que non queremos algo poñemos un 0, se queremos só algo utilizamos un 1 
db.getCollection('persons').find({}, {"_id":0, "first-name":1, "surnames":1})

//Non se poden mesturar os 1 e os 0, só no caso do ID, ou indicas todo o que queres poñer ou indicas todo o que non queres poñer
// Select the database to use.
use('davidos');

db.getCollection('persons').find({age:{"$gt":50}})

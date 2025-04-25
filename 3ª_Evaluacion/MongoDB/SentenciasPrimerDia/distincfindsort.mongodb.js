// Select the database to use.
use('davidos');

//Distinto que
db.getCollection('persons').distinct("first-name").sort();

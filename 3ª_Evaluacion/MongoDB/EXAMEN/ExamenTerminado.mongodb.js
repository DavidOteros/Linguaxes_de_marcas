
// Select the database to use.
use('davidos');


// Insert a few documents into the sales collection.



//1. Obtain all the information about the artwork entitld Leda

db.getCollection('artworks').find({})



//2. Get an array of all the different artists id in the artworks collection

db.getCollection('artworks').distinct({artist_id})

//3. Get the artist's name and the artwork type title for all the untitled artworks

//db.getCollection('artworks').find({})


//4. Get the title and start date of all artworks started before the year 1970

//db.getCollection('artworks').find({})


//5. Count the number of artworks without thumbnail

//db.getCollection('artworks').find({})



//6. Get the title and artist's name and artist display of the artworks that contain politics or money in their title

//db.getCollection('artworks').find({})


//7.Get the title and description of the first five artworks that do not have the word Chicago in their description

//db.getCollection('artworks').find({})



//8. Count the number of artworks that have the word women in its category titles regardless of case

//db.getCollection('artworks').find({})

//9. Sort by title the artworks that do not have their departament title the word art or the word america regardless of case

//db.getCollection('artworks').find({})


//10. Update the place of origin of those whose place of origin is United States to United States of America

//db.getCollection('artworks').find({})


//11.Increase by 1000 the weight of artworks weighing more than 6000 units




//12. Remove the latitude and longitude keys from the artworks that don't have this information

//db.getCollection('artworks').find({})



//13. Delete the artworks whose _id is less than 15000

//db.getCollection('artworks').find({})

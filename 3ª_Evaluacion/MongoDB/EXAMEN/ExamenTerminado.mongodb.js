
// Select the database to use.
use('davidos');


// Insert a few documents into the sales collection.



//1. Obtain all the information about the artwork entitld Leda

db.getCollection('artworks').find({})



//2. Get an array of all the different artists id in the artworks collection

db.getCollection('artworks').distinct("artist_id")

//3. Get the artist's name and the artwork type title for all the untitled artworks

db.getCollection('artworks').find({"title":"Untitled"}, {"artist_display":1, "title":1})


//4. Get the title and start date of all artworks started before the year 1970

db.getCollection('artworks').find({"date_start":{$lt:1970}}, {"title":1})


//5. Count the number of artworks without thumbnail

db.getCollection('artworks').find({"thumbnail":null}).count()


//6. Get the title and artist's name and artist display of the artworks that contain politics or money in their title

db.getCollection('artworks').find({"title":/politics|money/i}, {"title":1})


//7.Get the title and description of the first five artworks that do not have the word Chicago in their description

db.getCollection('artworks').find({"description":{$not:/Chicago/i}}, {"title":1, "description":1}).limit(5)


//8. Count the number of artworks that have the word women in its category titles regardless of case

db.getCollection('artworks').find({"category_titles":{$in:[/women/i]}}).count()

//9. Sort by title the artworks that do not have their departament title the word art or the word america regardless of case

db.getCollection('artworks').find({"department_title":/art|america/i}).sort("title")


//10. Update the place of origin of those whose place of origin is United States to United States of America

db.getCollection('artworks').updateMany({"place_of_origin":"United States"},{$set:{"place_of_origin":"United States of America"}})


//11.Increase by 1000 the weight of artworks weighing more than 6000 units




//12. Remove the latitude and longitude keys from the artworks that don't have this information

db.getCollection('artworks').updateMany({"latitude":null, "longitude":null}, {$unset:{"latitude":"", "longitude":""}})

db.getCollection('artworks').updateMany({
    
    $or:[
        {"latitude":null}, 
        {"longitude":null}
    ]}, {$unset:{"latitude":"", "longitude":""}})


//13. Delete the artworks whose _id is less than 15000

db.getCollection('artworks').find({})

db.getCollection('artworks').updateMany({},{$set:{"Campo_Prueba":"Sinormal"}})
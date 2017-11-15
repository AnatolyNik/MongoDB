# Connect to MongoDB
# http://127.0.0.1:29123/library/RMongo/html/RMongo-package.html
# https://www.r-bloggers.com/r-and-mongodb/

library(RMongo)

# Connect to a mongodb database: 
 mongo <- mongoDbConnect("test", "localhost", 27017) 
 
# Insert a document into a collection: This will insert a document of '"foo":"bar"' into the "test_data" collection.  
 output <- dbInsertDocument(mongo, "test_data", '{"foo": "bar"}')

# Close the connection: 
dbDisconnect(mongo)

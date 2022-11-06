


mongodb

command line (mongo):

databases (nosql == sql)
```
show databases
```


select database && create database (nosql == sql)
```
use db
```

collections (nosql) == tables (sql) 
```
show collections
```

<!-- select mongodb -->
table select all colunm 
```
db.collection.find()
```

table select object("test") in colunm
```
db.collection.find({name:"test"})
```

table select object 2 value in colunm
```
db.collection.find({name:{$in:["ya","toon"]}})
```

<!-- insert mongodb -->
create table && data in colunm
```
db.User.insert({_id:1,name:"toon"})
```

<!-- updata mongodb -->
db.User.update({_id:1},{$set:{name:"gift"}})
function 



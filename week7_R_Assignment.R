#  Read in our class database simplecharter.sqlite as a data frame in R
require('RSQLite')
drv <- dbDriver("SQLite")
db = dbConnect(drv, dbname = "C:/Users/liyv/91390/CUNY/simplecharter.sqlite", loadable.extensions = TRUE)
dbListTables(db)
allcharters <- dbGetQuery(db, "select * from allcharters")
dbDisconnect(db)
head(allcharters)
str(allcharters)
summary(allcharters)


# Exports the data frame Boston (from the MASS package) to a table in a new SQLite database file
require('RSQLite')
require('MASS')
sqlite    <- dbDriver("SQLite")
drv <- dbDriver("SQLite")
boston.db = dbConnect(drv, 'boston.db')
dbWriteTable(boston.db,'Boston',Boston)
dbListTables(boston.db)
BTest <- dbGetQuery(boston.db, 'Select * from Boston')
head(BTest)
dbDisconnect(boston.db)




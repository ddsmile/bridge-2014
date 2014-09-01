link <- 'C:/Users/Sandra/Documents/CUNY_MSDA application/Programming bridge/Week6/pizza-store-data.csv'
psd <- read.csv(link, header=T, stringsAsFactors=F)
str(psd)
summary(psd)

# The dataset contains 4 columns. The first column (data type: character) is the date of ordering. 
# The second column (data type: character) is the stores. It seems there is only 4 stores.
# The third column (data type: int) is the number of pizzas ordered.
# The fourth column (data type: int) is the total customer number. 
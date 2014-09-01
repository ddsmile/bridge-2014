# Find the Pixar movie list
# http://www.movieinsider.com/c194/pixar-animation-studios/

require('XML')
url.pixar <- "http://www.movieinsider.com/c194/pixar-animation-studios/"
pixar <- readHTMLTable(url.pixar, which = 1, header = F, stringsAsFactors = F)
colnames(pixar) <- c('Movie', 'Date')
pixar







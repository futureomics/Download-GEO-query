# Read the data into R
library (RCurl)
url = getURL ("http://bit.ly/GSE5583_data", followlocation = TRUE)
data = as.matrix(read.table (text = url, row.names = 1, header = T))


# Check the loaded dataset
dim(data) # Dimension of the dataset
head(data) # First few rows
tail(data) # Last few rows


# Exploratory plots


# Check the behavior of the data
hist(data, col = "gray", main="GSE5583 - Histogram")

# Log2 transformation (why?)
data2 = log2(data)


# Check the behavior of the data after log-transformation
hist(data2, col = "gray", main="GSE5583 (log2) - Histogram")

# Boxplot
boxplot(data2, col=c("darkgreen", "darkgreen", "darkgreen",
                     "darkred", "darkred", "darkred"),
        main="GSE5583 - boxplots", las=2)

# Hierarchical clustering of the "samples" based on
# the correlation coefficients of the expression values
hc = hclust(as.dist(1-cor(data2)))
plot(hc, main="GSE5583 - Hierarchical Clustering")

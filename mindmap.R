
### libraries ####
require(mindr)
### End Region ####

### text input ####
title <- "Machine Learning"
text <- "# Supervised Learning,## Classification,### Decision Trees,### SVM,### Logistic Regression,### Navie Bayes,### K-NN,## Regression,### Ridge/Lasso,### Linear,### Polynomial,# Unsupervised Learning,## Clustering,### Fuzzy C-Means,### K-Means,## Associlation Rule,### Apriori,### Eudat,### FP Growth,# Ensemble Learning,## Bagging,### Random Forest,## Boosting,### XGBoost,### AdaBoost,### LightGBM,### CatBoost,# Neural Networks and Deep Learning,## CNN,## RNN,## GAN"
      
mindmap_text <- c(text)
mindmap_text <- as.character(mindmap_text)
mindmap_text <- as.list(strsplit(mindmap_text, ",")[[1]])
mindmap_text <- as.character(mindmap_text)
### End Region ####

### mind map graph ####
plot <- mm(from = mindmap_text ,type = "text", root = title ,
           options = markmapOption(color ='category20b', linkShape = 'bracket')) 

      # NOT: color (’category10’,’category20’,’category20b’ and ’category20c’)
      # linkShape ('diagonal’ or ’bracket’ )
      # renderer (’basic’ or ’boxed’)
plot
### End Region ####

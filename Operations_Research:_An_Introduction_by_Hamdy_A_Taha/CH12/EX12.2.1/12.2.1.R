##Chapter 12 : Deterministic Inventory Modelling
##Example 2-1 : Page 493

##Natural gas consumption details
d<-matrix(c(100,110,90,70,65,50,40,42,56,68,88,95,110,125,98,80,60,53,44,45,63,77,92,99,90,100,
            88,79,56,57,38,39,60,70,82,90,121,130,95,90,70,58,41,44,70,80,95,100,109,119,99,75,
            68,55,43,41,65,79,88,94,130,122,100,85,73,58,42,43,64,75,80,101,115,100,103,90,76,
            55,45,40,67,78,98,97,130,115,100,95,80,60,49,48,64,85,96,105,125,100,94,86,79,59,46,
            39,69,90,100,110,87,80,78,75,69,48,39,41,50,70,88,93),byrow=T,ncol=12)
#row and coloumn names
rownames(d)<-1990:1999
colnames(d)<-month.abb

#assigns mean,standards deviation and median to a dataframe
tmp <- do.call(data.frame, 
               list(mean = apply(d, 2, mean),
                    sd = apply(d, 2, sd),
                    median = apply(d, 2, median)))
rbind(d,t(tmp))

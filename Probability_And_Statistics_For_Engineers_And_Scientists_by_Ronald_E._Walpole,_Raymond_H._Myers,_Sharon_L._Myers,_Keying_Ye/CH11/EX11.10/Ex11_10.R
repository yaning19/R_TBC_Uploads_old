
# Chapter 11
# Example 11.10 page no. 433 from the pdf..
# To find Correlation Coefficient..

# to find the correlation coefficient between the 2 variables

spec_gra <- c(0.414,0.383,0.399,0.402,0.442,0.422,0.466,0.500,0.514,0.530,0.569,0.558,0.577,0.572,0.548,0.581,0.557,0.550,0.531,0.550,0.556,0.523,0.602,0.569,0.544,0.557,0.530,0.547,0.585)

mod_of_rup <- c(29186,29266,26215,30162,38867,37831,44576,46097,59698,67705,66088,78486,89869,77369,67095,85156,69571,84160,73466,78610,67657,74017,87291,86836,82540,81699,82096,75657,80490)

cat("The sample correlation coefficient is",cor(spec_gra,mod_of_rup))






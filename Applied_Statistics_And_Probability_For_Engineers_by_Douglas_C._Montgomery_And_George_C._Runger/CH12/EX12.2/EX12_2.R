#install.packages("matlib")
library(matlib)

#Wire Bond Strength With Matrix Notation(Pg no. 485)


x1 = c(2,8,11,10,8,4,2,2,9,8,4,11,12,2,4,4,20,1,10,15,15,16,17,6,5)
x2 = c(50,110,120,550,295,200,375,52,100,300,412,400,500,360,205,400,600,585,540,250,290,510,590,100,400)
x3 = c(rep.int(1,25))
y = c(9.95,24.45,31.75,35.00,25.02,16.86,14.38,9.60,24.35,27.50,17.08,37.00,41.95,11.66,21.65,17.89,69.00,10.30,34.93,46.59,44.88,54.12,56.63,22.13,21.15)

X = matrix(c(x3,x1,x2),nrow = 25, ncol = 3, byrow = FALSE)
Y = matrix(c(y), nrow = 25, ncol = 1, byrow = FALSE)

X_t = t(X)

XX_t = X_t %*% X

XX_t

Xt_y = X_t %*% Y

Xt_y

beta = inv(XX_t) %*% Xt_y

cat("the fitted regression model is y =",beta[1,1],"+",beta[2,1],"x1 +",beta[3,1],"x2")
y0 = beta[1,1] + beta[2,1]*2 + beta[3,1]*50
y0
y1 = 9.95

e = y1 - y0
e = round(e, digits = 2)
e
# The answer may slightly vary due to rounding off values




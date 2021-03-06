speed =c(340,570,340,570,340,570,340,570,440,440,440,440,305,635,440,440,440,440,305,635,440,440,440,440)
life =c(70,29,60,28,64,32,44,24,35,31,38,35,52,23,40,28,46,33,46,27,37,34,41,28)
feed =c(0.00630,0.00630,0.01410,0.01416,0.00630,0.00630,0.01416,0.01416,0.00905,0.00905,0.00905,0.00905,0.00905,0.00905,0.00472,0.01732,
        0.00905,0.00905,0.00905,0.00905,0.00472,0.01732, 0.00905, 0.00905)
depth =c(0.02100,0.02100,0.02100,0.02100,0.02100,0.04000,0.04000,0.04000, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900, 0.02900,
         0.01350, 0.04550,0.02900,0.02900,0.02900,0.02900, 0.01350,0.04550 )

dat= data.frame(life,speed,feed,depth)
fit =lm(life~speed+feed+depth+I(speed*feed)+I(feed*depth)+I(speed*depth)+I(speed*depth*feed))
x=summary(fit)
coef =coefficients(x)
cat("the leastsquares equation : Tool life = ",coef[1],coef[2],"Speed  ",coef[3],"Feed  ",coef[4],"Depth  + ",coef[5],"speed*feed + ",coef[6],
"feed*depth + ",coef[7],"speed*depth ",coef[8],"speed*feed*depth")

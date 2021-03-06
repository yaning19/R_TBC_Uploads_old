# Computing Probability
# definitions
# A = purchased a TV with faster refresh rate
# A' = purchased a TV with faster refresh rate
# B = purchased streaming Box
# B' = did not purchase streaming Box
Television_Refresh_Rate <- c("Faster","Standard","Total")
Satisfaction_Yes<- c(64,176,240)
Satisfaction_No<- c(16,44,60)
Total<- c(80,220,300)
data<- cbind(Television_Refresh_Rate,Satisfaction_Yes,Satisfaction_No,Total)
p_faster_refresh_rate<- (Total[1]/Total[3])
round(p_faster_refresh_rate,digits=3)

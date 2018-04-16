#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue-expenses
round(profit,2)
profitaftertax <- 0.7*profit
pat <- round(profitaftertax,2)
pat
margin1 <- (profitaftertax/revenue)*100
margin <- round(margin,2)
mean <- mean(pat)
mean
for(i in pat){
print(i)
  if(i>=mean){
    print("good month")
  }
  else{
    print("bad month")
  }
}
max(profit)
min(profit)
?round()


goodmonths <- pat > mean
goodmonths
badmonths <- !goodmonths
badmonths

bestmonth <-  pat == max(pat)
bestmonth

worstmonth <- pat == min(pat)
worstmonth

revenue1000 <- round(revenue/1000,0)
revenue1000
expenses1000 <- round(expenses/1000,0)
expenses1000
profit1000 <- round(profit/1000,0)
profit1000
pat1000 <- round(pat/1000,0)
pat1000

M <- rbind(revenue1000,expenses1000,profit1000,pat1000,margin,goodmonths,badmonths,bestmonth,worstmonth)
M
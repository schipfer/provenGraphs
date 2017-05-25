library(waffle)
setwd("~/p.Diss/Papers_to_be_eingebunden")

#Eurostat NRG_100a & 107a Gross inland consumption in Terajoule
#2015 EU28
#Color palet from http://colorbrewer2.org <3

total<-c("Solid fuels (11 EJ)"=11006039,
         "Total petroleum (23 EJ)"=23441554,
         "Gas (15 EJ)"=14984951,
         "Nuclear heat (9 EJ)"=9261297,
         "Renewable energy (8 EJ)"=8793834,
         "Other (1 EJ)"=605597)

col5div<-c('#d7191c','#fdae61','#ffffbf','#abd9e9','#2c7bb6')

png(paste("EU28tot",".jpeg",sep=""),    # create PNG for the heat map        
    width = 8*300,        # 5 x 300 pixels
    height = 2*300,
    res = 300,            # 300 pixels per inch
    pointsize = 12)

waffle(total/1000000,rows=3,size=1,col=col5div,
       xlab="1 square == 1 EJ")

dev.off()

ren<-c("Hydro power (1.3 EJ)"=1227852,
       "Wind power (1.1 EJ)"=1086732,
       "Solar thermal (0.2 EJ)"=178021,
       "Solar photovoltaics (0.4 EJ)"=368390,
       "Geothermal energy (0.3 EJ)"=270736,
       "Biomass and biodegradable wastes (5.7 EJ)"=5660342)

col6div<-c('#8c510a','#d8b365','#f6e8c3',
          '#c7eae5','#5ab4ac','#01665e')

png(paste("EU28ren",".jpeg",sep=""),    # create PNG for the heat map        
    width = 8*300,        # 5 x 300 pixels
    height = 2*300,
    res = 300,            # 300 pixels per inch
    pointsize = 12)

waffle(ren/100000,rows=4,size=1,col=col6div,
       xlab="1 square == 0.1 EJ")

dev.off()



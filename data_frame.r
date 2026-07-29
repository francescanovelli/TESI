####### PRIMA PARTE ###################################################################################################
metriche1 <-  rbind(
  as.data.frame(pm10_ant1400), as.data.frame(pm10_ant1610),
  as.data.frame(pm10_arg1420), as.data.frame(pm10_arg1620),
  as.data.frame(pm10_bis1050), as.data.frame(pm10_bis1230), as.data.frame(pm10_bis1430),
  as.data.frame(pm10_bon1900), as.data.frame(pm10_bon2100),
  as.data.frame(pm10_bou1240), as.data.frame(pm10_bou1440), as.data.frame(pm10_bou1620),
  as.data.frame(pm10_cav1500), as.data.frame(pm10_cav1800),  as.data.frame(pm10_cav2200),
  as.data.frame(pm10_cham1250), as.data.frame(pm10_cham1470), as.data.frame(pm10_cham1710), as.data.frame(pm10_cham1890),
  as.data.frame(pm10_chav1470), as.data.frame(pm10_chav1720), as.data.frame(pm10_chav1920), as.data.frame(pm10_chav2100),
  as.data.frame(pm10_dev1500),
  as.data.frame(pm10_fuo1900),  as.data.frame(pm10_fuo2100))

df1 <- data.frame(
  plot = c("ant1400", "ant1610", "arg1420", "arg1620",
           "bis1050", "bis1230", "bis1430", "bon1900", "bon2100", "bou1240", "bou1440", "bou1620",
           "cav1500", "cav1800", "cav2200", "cham1250", "cham1470", "cham1710", "cham1890",
           "chav1470", "chav1720", "chav1920", "chav2100", "dev1500",
           "fuo1900", "fuo2100"),
  
  richness = c(32, 27, 25, 33, 14, 47, 55, 45, 37, 19, 20, 37, 
               25, 13, 38, 17, 22, 45, 63, 36, 16, 34, 53, 
               37, 34, 22),
  metriche1)

######### SECONDA PARTE ############################################################################################################
metriche2 <- rbind(
  as.data.frame(pm10_gam1400), as.data.frame(pm10_gam1600), as.data.frame(pm10_gam1800), as.data.frame(pm10_gam2000),
  as.data.frame(pm10_lori1370), as.data.frame(pm10_lori1620), as.data.frame(pm10_lori1800),
  as.data.frame(pm10_mer1600), as.data.frame(pm10_mer1820), as.data.frame(pm10_mer2000),
  as.data.frame(pm10_mon1500), as.data.frame(pm10_mon1730),
  as.data.frame(pm10_nev2010),
  as.data.frame(pm10_pai1700),
  as.data.frame(pm10_pec0962), as.data.frame(pm10_pec1152), as.data.frame(pm10_pec1375), as.data.frame(pm10_pec1578),
  as.data.frame(pm10_rac0730), as.data.frame(pm10_rac0950),
  as.data.frame(pm10_rbi1070), as.data.frame(pm10_rbi1310),as.data.frame(pm10_rbi1500), as.data.frame(pm10_rbi1550),
  as.data.frame(pm10_ris1900),
  as.data.frame(pm10_sap1250), as.data.frame(pm10_sap1500))

df2 <- data.frame(
  plot = c("gam1400", "gam1600", "gam1800", "gam2000",
           "lori1370", "lori1620", "lori1800",
           "mer1600", "mer1820", "mer2000", "mon1500", "mon1730", 
           "nev2010",
           "pai1700", "pec0962", "pec1152", "pec1375", "pec1578",
           "rac0730", "rac0950", "rbi1070", "rbi1310", "rbi1500", "rbi1550", "ris1900", 
           "sap1250", "sap1500"),
  
  richness = c(23, 12, 6, 14, 15, 16, 37, 10, 27, 42, 23, 74, 
               48, 44, 5, 25, 25, 63, 39, 47, 67, 63, 99, 39, 
               45, 43, 63),
  metriche2)

######### TERZA PARTE ##############################################################################################################################
metriche3 <- rbind(
  as.data.frame(pm10_sau1550), as.data.frame(pm10_sau1750), as.data.frame(pm10_sau1900),
  as.data.frame(pm10_seys0460),as.data.frame(pm10_seys0615),as.data.frame(pm10_seys0840), as.data.frame(pm10_seys1035), as.data.frame(pm10_seys1350), as.data.frame(pm10_seys1500),
  as.data.frame(pm10_sob1700), as.data.frame(pm10_sob2000), as.data.frame(pm10_sob2100),
  as.data.frame(pm10_ste1400), as.data.frame(pm10_ste1600), as.data.frame(pm10_ste1800), as.data.frame(pm10_ste2000),
  as.data.frame(pm10_tan1420), as.data.frame(pm10_tan1700), as.data.frame(pm10_tan1890),
  as.data.frame(pm10_ten1430), as.data.frame(pm10_ten1670), as.data.frame(pm10_ten1890),
  as.data.frame(pm10_ter1500), as.data.frame(pm10_ter1610), as.data.frame(pm10_ter1900),
  as.data.frame(pm10_tru1860), as.data.frame(pm10_tru2000),
  as.data.frame(pm10_uba1150), as.data.frame(pm10_uba1425), as.data.frame(pm10_uba1630),
  as.data.frame(pm10_van1400), as.data.frame(pm10_van1630), as.data.frame(pm10_van1800), as.data.frame(pm10_van2020),
  as.data.frame(pm10_vaul0710), as.data.frame(pm10_vaul0830), as.data.frame(pm10_vaul1100),as.data.frame(pm10_vaul1290),
  as.data.frame(pm10_vcha1910),
  as.data.frame(pm10_vtn0925), as.data.frame(pm10_vtn1130), as.data.frame(pm10_vtn1340), as.data.frame(pm10_vtn1510), as.data.frame(pm10_vtn1675),
  as.data.frame(pm10_vts1040), as.data.frame(pm10_vts1260), as.data.frame(pm10_vts1455))

df3 <- data.frame(
  plot = c("sau1550", "sau1750", "sau1900", "seys0460", "seys0615", "seys0840", "seys1035", "seys1350", "seys1500", 
           "sob1700", "sob200", "sob2100", "ste1400", "ste1600", "ste1800", "ste2000",
           "tan1420", "tan1700", "tan1890", "ten1430", "ten1670", "ten1890", 
           "ter1500", "ter1610", "ter1900", "tru1860", "tru2000",
           "uba1150", "uba1425", "uba1630",
           "van1400", "van1630", "van1800", "van2020", "vaul0710", "vaul0830", "vaul1100", "vaul1290", 
           "vcha1910", "vtn0925", "vtn1130", "vtn1340", "vtn1510", "vtn1675", "vts1040", "vts1260","vts1455"),
  
  richness = c(18, 11, 62, 43, 44, 28, 23, 16, 31, 15, 16, 17, 51, 51,
               33, 42, 41, 18, 34, 36, 49, 49, 47, 67, 21, 17, 50, 27,
               40, 41, 24, 28, 66, 59, 21, 36, 32, 39, 45, 33, 29, 19, 9, 11, 48, 39, 8),
  metriche3)

#############RAO INDEX##################################################################################
#######DA SISTEMARE E UNIRE CON CH E ITA
df1 <- data.frame(
  plot = c("ant1400", "ant1610", "arg1420", "arg1620",
           "bis1050", "bis1230", "bis1430", "bon1900", "bon2100", "bou1240", "bou1440", "bou1620",
           "cav1500", "cav1800", "cav2200", "cham1250", "cham1470", "cham1710", "cham1890",
           "chav1470", "chav1720", "chav1920", "chav2100", "dev1500",
           "fuo1900", "fuo2100"),
  
  rao_zmax = c(rao_zmax_ant1400_1, rao_zmax_ant1610_1,
               rao_zmax_arg1420_1, rao_zmax_arg1620_1,
               rao_zmax_bis1050_1, rao_zmax_bis1230_1, rao_zmax_bis1430_1,
               rao_zmax_bon1900_1, rao_zmax_bon2100_1,
               rao_zmax_bou1240_1, rao_zmax_bou1440_1, rao_zmax_bou1620_1,
               
               rao_zmax_cham1250_1, rao_zmax_cham1470_1, rao_zmax_cham1710_1, rao_zmax_cham1890_1,
               rao_zmax_chav1470_1, rao_zmax_chav1720_1, rao_zmax_chav1920_1, rao_zmax_chav2100_1,
               rao_zmax_dev1500_1,
               ),
  
  rao_zmean = c(rao_zmean_ant1400_1, rao_zmean_ant1610_1,
                rao_zmean_arg1420_1, rao_zmean_arg1620_1,
                rao_zmean_bis1050_1, rao_zmean_bis1230_1, rao_zmean_bis1430_1,
                rao_zmean_bon1900_1, rao_zmean_bon2100_1,
                rao_zmean_bou1240_1, rao_zmean_bou1440_1, rao_zmean_bou1620_1,
                
                rao_zmean_cham1250_1, rao_zmean_cham1470_1, rao_zmean_cham1710_1, rao_zmean_cham1890_1,
                rao_zmean_chav1470_1, rao_zmean_chav1720_1, rao_zmean_chav1920_1,  rao_zmean_chav2100_1,
                rao_zmean_dev1500_1,
                ))

df1_10 <- data.frame(
  plot = c("ant1400", "ant1610", "arg1420", "arg1620",
           "bis1050", "bis1230", "bis1430", "bon1900", "bon2100", "bou1240", "bou1440", "bou1620",
           "cav1500", "cav1800", "cav2200", "cham1250", "cham1470", "cham1710", "cham1890",
           "chav1470", "chav1720", "chav1920", "chav2100", "dev1500",
           "fuo1900", "fuo2100"),
  
  rao_zmax = c(rao_zmax_ant1400_10, rao_zmax_ant1610_10,
               rao_zmax_arg1420_10, rao_zmax_arg1620_10,
               rao_zmax_bis1050_10, rao_zmax_bis1230_10, rao_zmax_bis1430_10,
               rao_zmax_bon1900_10, rao_zmax_bon2100_10,
               rao_zmax_bou1240_10, rao_zmax_bou1440_10, rao_zmax_bou1620_10,
               
               rao_zmax_cham1250_10, rao_zmax_cham1470_10, rao_zmax_cham1710_10, rao_zmax_cham1890_10,
               rao_zmax_chav1470_10, rao_zmax_chav1720_10, rao_zmax_chav1920_10, rao_zmax_chav2100_10,
               rao_zmax_dev1500_10,
               ),
  
  rao_zmean = c(rao_zmean_ant1400_10, rao_zmean_ant1610_10,
                rao_zmean_arg1420_10, rao_zmean_arg1620_10,
                rao_zmean_bis1050_10, rao_zmean_bis1230_10, rao_zmean_bis1430_10,
                rao_zmean_bon1900_10, rao_zmean_bon2100_10,
                rao_zmean_bou1240_10, rao_zmean_bou1440_10, rao_zmean_bou1620_10,
                
                rao_zmean_cham1250_10, rao_zmean_cham1470_10, rao_zmean_cham1710_10, rao_zmean_cham1890_10,
                rao_zmean_chav1470_10, rao_zmean_chav1720_10, rao_zmean_chav1920_10,  rao_zmean_chav2100_10,
                rao_zmean_dev1500_10,
                ))


df2 <- data.frame(
  plot = c("gam1400", "gam1600", "gam1800", "gam2000",
           "lori1370", "lori1620", "lori1800",
           "mer1600", "mer1820", "mer2000", "mon1500", "mon1730", 
           "nev2010",
           "pai1700", "pec0962", "pec1152", "pec1375", "pec1578",
           "rac0730", "rac0950", "rbi1070", "rbi1310", "rbi1500", "rbi1550", "ris1900", 
           "sap1250", "sap1500"),
  
  rao_zmax = c(
               rao_zmax_lori1370_1, rao_zmax_lori1620_1, rao_zmax_lori1800_1,
               rao_zmax_mer1600_1, rao_zmax_mer1820_1, rao_zmax_mer2000_1,
               rao_zmax_mon1500_1, rao_zmax_mon1730_1,
               rao_zmax_nev2010_1,
               rao_zmax_pai1700_1,
               rao_zmax_pec0962_1, rao_zmax_pec1152_1, rao_zmax_pec1375_1, rao_zmax_pec1578_1,
               rao_zmax_rac0730_1, rao_zmax_rac0950_1,
               rao_zmax_rbi1070_1, rao_zmax_rbi1310_1, rao_zmax_rbi1500_1, rao_zmax_rbi1550_1,
               rao_zmax_ris1900_1,
               rao_zmax_sap1250_1, rao_zmax_sap1500_1),
  
  rao_zmean = c(
                rao_zmean_lori1370_1, rao_zmean_lori1620_1, rao_zmean_lori1800_1,
                rao_zmean_mer1600_1, rao_zmean_mer1820_1, rao_zmean_mer2000_1,
                rao_zmean_mon1500_1, rao_zmean_mon1730_1,
                rao_zmean_nev2010_1,
                rao_zmean_pai1700_1,
                rao_zmean_pec0962_1, rao_zmean_pec1152_1, rao_zmean_pec1375_1, rao_zmean_pec1578_1,
                rao_zmean_rac0730_1, rao_zmean_rac0950_1,
                rao_zmean_rbi1070_1, rao_zmean_rbi1310_1, rao_zmean_rbi1500_1, rao_zmean_rbi1550_1,
                rao_zmean_ris1900_1,
                rao_zmean_sap1250_1, rao_zmean_sap1500_1))

df2_10 <- data.frame(
  plot = c("gam1400", "gam1600", "gam1800", "gam2000",
           "lori1370", "lori1620", "lori1800",
           "mer1600", "mer1820", "mer2000", "mon1500", "mon1730", 
           "nev2010",
           "pai1700", "pec0962", "pec1152", "pec1375", "pec1578",
           "rac0730", "rac0950", "rbi1070", "rbi1310", "rbi1500", "rbi1550", "ris1900", 
           "sap1250", "sap1500"),
  
  rao_zmax = c(
               rao_zmax_lori1370_10, rao_zmax_lori1620_10, rao_zmax_lori1800_10,
               rao_zmax_mer1600_10, rao_zmax_mer1820_10, rao_zmax_mer2000_10,
               rao_zmax_mon1500_10, rao_zmax_mon1730_10,
               rao_zmax_nev2010_10,
               rao_zmax_pai1700_10,
               rao_zmax_pec0962_10, rao_zmax_pec1152_10, rao_zmax_pec1375_10, rao_zmax_pec1578_10,
               rao_zmax_rac0730_10, rao_zmax_rac0950_10,
               rao_zmax_rbi1070_10, rao_zmax_rbi1310_10, rao_zmax_rbi1500_10, rao_zmax_rbi1550_10,
               rao_zmax_ris1900_10,
               rao_zmax_sap1250_10, rao_zmax_sap1500_10),
  
  rao_zmean = c(
                rao_zmean_lori1370_10, rao_zmean_lori1620_10, rao_zmean_lori1800_10,
                rao_zmean_mer1600_10, rao_zmean_mer1820_10, rao_zmean_mer2000_10,
                rao_zmean_mon1500_10, rao_zmean_mon1730_10,
                rao_zmean_nev2010_10,
                rao_zmean_pai1700_10,
                rao_zmean_pec0962_10, rao_zmean_pec1152_10, rao_zmean_pec1375_10, rao_zmean_pec1578_10,
                rao_zmean_rac0730_10, rao_zmean_rac0950_10,
                rao_zmean_rbi1070_10, rao_zmean_rbi1310_10, rao_zmean_rbi1500_10, rao_zmean_rbi1550_10,
                rao_zmean_ris1900_10, 
                rao_zmean_sap1250_10, rao_zmean_sap1500_10))


df3 <- data.frame(
  plot = c("sau1550", "sau1750", "sau1900", "seys0460", "seys0615", "seys0840", "seys1035", "seys1350", "seys1500", 
           "sob1700", "sob200", "sob2100", "ste1400", "ste1600", "ste1800", "ste2000",
           "tan1420", "tan1700", "tan1890", "ten1430", "ten1670", "ten1890", 
           "ter1500", "ter1610", "ter1900", "tru1860", "tru2000",
           "uba1150", "uba1425", "uba1630",
           "van1400", "van1630", "van1800", "van2020", "vaul0710", "vaul0830", "vaul1100", "vaul1290", 
           "vcha1910", "vtn0925", "vtn1130", "vtn1340", "vtn1510", "vtn1675", "vts1040", "vts1260","vts1455"),
  
  rao_zmax = c(rao_zmax_sau1550_1, rao_zmax_sau1750_1, rao_zmax_sau1900_1,
               rao_zmax_seys0460_1, rao_zmax_seys0615_1, rao_zmax_seys0840_1, rao_zmax_seys1035_1, rao_zmax_seys1350_1, rao_zmax_seys1500_1,
               
               
               rao_zmax_tan1420_1, rao_zmax_tan1700_1, rao_zmax_tan1890_1,
               rao_zmax_ten1430_1, rao_zmax_ten1670_1, rao_zmax_ten1890_1,
               
               
               rao_zmax_uba1150_1, rao_zmax_uba1425_1, rao_zmax_uba1630_1,
               rao_zmax_van1400_1, rao_zmax_van1630_1, rao_zmax_van1800_1, rao_zmax_van2020_1,
               rao_zmax_vaul0710_1, rao_zmax_vaul0830_1, rao_zmax_vaul1100_1, rao_zmax_vaul1290_1,
               rao_zmax_vcha1910_1,
               rao_zmax_vtn0925_1, rao_zmax_vtn1130_1, rao_zmax_vtn1340_1, rao_zmax_vtn1510_1, rao_zmax_vtn1675_1,
               rao_zmax_vts1040_1, rao_zmax_vts1260_1, rao_zmax_vts1455_1), 
  
  rao_zmean = c(rao_zmean_sau1550_1, rao_zmean_sau1750_1, rao_zmean_sau1900_1,
                rao_zmean_seys0460_1, rao_zmean_seys0615_1, rao_zmean_seys0840_1, rao_zmean_seys1035_1, rao_zmean_seys1350_1, rao_zmean_seys1500_1,
                
                
                rao_zmean_tan1420_1, rao_zmean_tan1700_1, rao_zmean_tan1890_1,
                rao_zmean_ten1430_1, rao_zmean_ten1670_1, rao_zmean_ten1890_1,
                
                
                rao_zmean_uba1150_1, rao_zmean_uba1425_1, rao_zmean_uba1630_1,
                rao_zmean_van1400_1, rao_zmean_van1630_1, rao_zmean_van1800_1, rao_zmean_van2020_1,
                rao_zmean_vaul0710_1, rao_zmean_vaul0830_1, rao_zmean_vaul1100_1, rao_zmean_vaul1290_1,
                rao_zmean_vcha1910_1,
                rao_zmean_vtn0925_10, rao_zmean_vtn1130_10, rao_zmean_vtn1340_10, rao_zmean_vtn1510_10, rao_zmean_vtn1675_10,
                rao_zmean_vts1040_1, rao_zmean_vts1260_1, rao_zmean_vts1455_1))

df3_10 <- data.frame(
  plot = c("sau1550", "sau1750", "sau1900", "seys0460", "seys0615", "seys0840", "seys1035", "seys1350", "seys1500", 
           "sob1700", "sob200", "sob2100", "ste1400", "ste1600", "ste1800", "ste2000",
           "tan1420", "tan1700", "tan1890", "ten1430", "ten1670", "ten1890", 
           "ter1500", "ter1610", "ter1900", "tru1860", "tru2000",
           "uba1150", "uba1425", "uba1630",
           "van1400", "van1630", "van1800", "van2020", "vaul0710", "vaul0830", "vaul1100", "vaul1290", 
           "vcha1910", "vtn0925", "vtn1130", "vtn1340", "vtn1510", "vtn1675", "vts1040", "vts1260","vts1455"),
  
  rao_zmax = c(rao_zmax_sau1550_10, rao_zmax_sau1750_10, rao_zmax_sau1900_10, 
               rao_zmax_seys0460_10, rao_zmax_seys0615_10, rao_zmax_seys0840_10, rao_zmax_seys1035_10, rao_zmax_seys1350_10, rao_zmax_seys1500_10,
              
               
               rao_zmax_tan1420_10, rao_zmax_tan1700_10, rao_zmax_tan1890_10,
               rao_zmax_ten1430_10, rao_zmax_ten1670_10, rao_zmax_ten1890_10,
               
               
               rao_zmax_uba1150_10, rao_zmax_uba1425_10, rao_zmax_uba1630_10,
               rao_zmax_van1400_10, rao_zmax_van1630_10, rao_zmax_van1800_10, rao_zmax_van2020_10,
               rao_zmax_vaul0710_10, rao_zmax_vaul0830_10, rao_zmax_vaul1100_10, rao_zmax_vaul1290_10,
               rao_zmax_vcha1910_10,
               rao_zmax_vtn0925_10, rao_zmax_vtn1130_10, rao_zmax_vtn1340_10, rao_zmax_vtn1510_10, rao_zmax_vtn1675_10,
               rao_zmax_vts1040_10, rao_zmax_vts1260_10, rao_zmax_vts1455_10), 
  
  rao_zmean = c(rao_zmean_sau1550_10, rao_zmean_sau1750_10, rao_zmean_sau1900_10,
                rao_zmean_seys0460_10, rao_zmean_seys0615_10, rao_zmean_seys0840_10, rao_zmean_seys1035_10, rao_zmean_seys1350_10, rao_zmean_seys1500_10,
                
                
                rao_zmean_tan1420_10, rao_zmean_tan1700_10, rao_zmean_tan1890_10,
                rao_zmean_ten1430_10, rao_zmean_ten1670_10, rao_zmean_ten1890_10,
                
                
                rao_zmean_uba1150_10, rao_zmean_uba1425_10, rao_zmean_uba1630_10,
                rao_zmean_van1400_10, rao_zmean_van1630_10, rao_zmean_van1800_10, rao_zmean_van2020_10,
                rao_zmean_vaul0710_10, rao_zmean_vaul0830_10, rao_zmean_vaul1100_10, rao_zmean_vaul1290_10,
                rao_zmean_vcha1910_10,
                rao_zmean_vtn0925_10, rao_zmean_vtn1130_10, rao_zmean_vtn1340_10, rao_zmean_vtn1510_10, rao_zmean_vtn1675_10,
                rao_zmean_vts1040_10, rao_zmean_vts1260_10, rao_zmean_vts1455_10))




##################################################################################################################################################################################################################
#Data frame per albero
library(dplyr)

ant <- read.csv("ant.csv")
arg <- read.csv("arg.csv")

bis <- read.csv("bis.csv")
bon <- read.csv("bon.csv")
bou <- read.csv("bou.csv")

cham <- read.csv("cham.csv")

dev <- read.csv("dev.csv")

lori <- read.csv("lori.csv")

mer <- read.csv("mer.csv")
mon <- read.csv("mon.csv")

nev <- read.csv("nev.csv")

pai <- read.csv("pai.csv")
pec <- read.csv("pec.csv")

rac <- read.csv("rac.csv")
rbi <- read.csv("rbi.csv")
ris <- read.csv("ris.csv")

sap <- read.csv("sap.csv")
sau <- read.csv("sau.csv")
seys <- read.csv("seys.csv")

tan <- read.csv("tan.csv")
ten <- read.csv("ten.csv")
uba <- read.csv("uba.csv")

van <- read.csv("van.csv")
vaul <- read.csv("vaul.csv")
vcha <- read.csv("vcha.csv")
vtn <- read.csv("vtn.csv")
vts <- read.csv("vts.csv")



tm_ant <- bind_rows(
  ant1400 = tm_ant1400@data,
  ant1610 = tm_ant1610@data,
  .id = "plot_id")
write.csv(tm_ant, "ant.csv", row.names = FALSE)


tm_arg <- bind_rows(
  arg1420 = tm_arg1420@data,
  arg1620 = tm_arg1620@data,
  .id = "plot_id")
write.csv(tm_arg, "arg.csv", row.names = FALSE)


tm_bis <- bind_rows(
  bis1050 = tm_bis1050@data,
  bis1230 = tm_bis1230@data,
  bis1430 = tm_bis1430@data,
  .id = "plot_id")
write.csv(tm_bis, "bis.csv", row.names = FALSE)


tm_bon <- bind_rows(
  bon1900 = tm_bon1900@data,
  bon2100 = tm_bon2100@data,
  .id = "plot_id")
write.csv(tm_bon, "bon.csv", row.names = FALSE)


tm_bou <- bind_rows(
  bou1240 = tm_bou1240@data,
  bou1440 = tm_bou1440@data,
  bou1620 = tm_bou1620@data,
  .id = "plot_id")
write.csv(tm_bou, "bou.csv", row.names = FALSE)


tm_cham <- bind_rows(
  cham1250 = tm_cham1250@data,
  cham1470 = tm_cham1470@data,
  cham1710 = tm_cham1710@data,
  cham1890 = tm_cham1890@data,
  .id = "plot_id")
write.csv(tm_cham, "cham.csv", row.names = FALSE)


tm_dev <- bind_rows(
  dev1500 = tm_dev1500@data,
  .id = "plot_id")
write.csv(tm_dev, "dev.csv", row.names = FALSE)


tm_lori <- bind_rows(
  lori1370 = tm_lori1370@data,
  lori1620 = tm_lori1620@data,
  lori1800 = tm_lori1800@data,
  .id = "plot_id")
write.csv(tm_lori, "lori.csv", row.names = FALSE)


tm_mer <- bind_rows(
  mer1600 = tm_mer1600@data,
  mer1820 = tm_mer1820@data,
  mer2000 = tm_mer2000@data,
  .id = "plot_id")
write.csv(tm_mer, "mer.csv", row.names = FALSE)


tm_mon <- bind_rows(
  mon1500 = tm_mon1500@data,
  mon1730 = tm_mon1730@data,
  .id = "plot_id")
write.csv(tm_mon, "mon.csv", row.names = FALSE)


tm_nev <- bind_rows(
  nev2010 = tm_nev2010@data,
  .id = "plot_id")
write.csv(tm_nev, "nev.csv", row.names = FALSE)


tm_pai <- bind_rows(
  pai1700 = tm_pai1700@data,
  .id = "plot_id")
write.csv(tm_pai, "pai.csv", row.names = FALSE)


tm_pec <- bind_rows(
  pec0962 = tm_pec0965@data,
  pec1152 = tm_pec1152@data,
  pec1375 = tm_pec1375@data,
  pec1578 = tm_pec1578@data,
  .id = "plot_id")
write.csv(tm_pec, "pec.csv", row.names = FALSE)


tm_rac <- bind_rows(
  rac0730 = tm_rac0730@data,
  rac0950 = tm_rac0950@data,
  .id = "plot_id")
write.csv(tm_rac, "rac.csv", row.names = FALSE)


tm_rbi <- bind_rows(
  rbi1070 = tm_rbi1070@data,
  rbi1310 = tm_rbi1310@data,
  rbi1500 = tm_rbi1500@data,
  rbi1550 = tm_rbi1550@data,
  .id = "plot_id")
write.csv(tm_rbi, "rbi.csv", row.names = FALSE)


tm_ris <- bind_rows(
  ris1900 = tm_ris1900@data,
  .id = "plot_id")
write.csv(tm_ris, "ris.csv", row.names = FALSE)


tm_sap <- bind_rows(
  sap1250 = tm_sap1250@data,
  sap1500 = tm_sap1500@data,
  .id = "plot_id")
write.csv(tm_sap, "sap.csv", row.names = FALSE)


tm_sau <- bind_rows(
  sau1550 = tm_sau1550@data,
  sau1750 = tm_sau1750@data,
  sau1900 = tm_sau1900@data,
  .id = "plot_id")
write.csv(tm_sau, "sau.csv", row.names = FALSE)


tm_seys <- bind_rows(
  seys0460 = tm_seys0460@data,
  seys0615 = tm_seys0615@data,
  seys0840 = tm_seys0840@data,
  seys1035 = tm_seys1035@data,
  seys1350 = tm_seys1350@data,
  seys1500 = tm_seys1500@data,
  .id = "plot_id")
write.csv(tm_seys, "seys.csv", row.names = FALSE)


tm_tan <- bind_rows(
  tan1420 = tm_tan1420@data,
  tan1700 = tm_tan1700@data,
  tan1890 = tm_tan1890@data,
  .id = "plot_id")
write.csv(tm_tan, "tan.csv", row.names = FALSE)


tm_ten <- bind_rows(
  ten1430 = tm_ten1430@data,
  ten1670 = tm_ten1670@data,
  ten1890 = tm_ten1890@data,
  .id = "plot_id")
write.csv(tm_ten, "ten.csv", row.names = FALSE)


tm_uba <- bind_rows(
  uba1150 = tm_uba1150@data,
  uba1425 = tm_uba1425@data,
  uba1630 = tm_uba1630@data,
  .id = "plot_id")
write.csv(tm_uba, "uba.csv", row.names = FALSE)


tm_van <- bind_rows(
  van1400 = tm_van1400@data,
  van1630 = tm_van1630@data,
  van1800 = tm_van1800@data,
  van2020 = tm_van2020@data,
  .id = "plot_id")
write.csv(tm_van, "van.csv", row.names = FALSE)


tm_vaul <- bind_rows(
  vaul0710 = tm_vaul0710@data,
  vaul0830 = tm_vaul0830@data,
  vaul1100 = tm_vaul1100@data,
  vaul1290 = tm_vaul1290@data,
  .id = "plot_id")
write.csv(tm_vaul, "vaul.csv", row.names = FALSE)


tm_vcha <- bind_rows(
  vcha1910 = tm_vcha1910@data,
  .id = "plot_id")
write.csv(tm_vcha, "vcha.csv", row.names = FALSE)


tm_vtn <- bind_rows(
  vtn0925 = tm_vtn0925@data,
  vtn1130 = tm_vtn1130@data,
  vtn1340 = tm_vtn1340@data,
  vtn1510 = tm_vtn1510@data,
  vtn1675 = tm_vtn1675@data,
  .id = "plot_id")
write.csv(tm_vtn, "vtn.csv", row.names = FALSE)


tm_vts <- bind_rows(
  vts1040 = tm_vts1040@data,
  vts1260 = tm_vts1260@data,
  vts1455 = tm_vts1455@data,
  .id = "plot_id")
write.csv(tm_vts, "vts.csv", row.names = FALSE)

####### PRIMA PARTE

metriche <-  rbind(
  as.data.frame(cm_ant1400), as.data.frame(cm_ant1610), as.data.frame(cm_ant1750),
  as.data.frame(cm_arg1420), as.data.frame(cm_arg1620), as.data.frame(cm_arg1790),
  as.data.frame(cm_arm1520),
  as.data.frame(cm_bis1050), as.data.frame(cm_bis1230), as.data.frame(cm_bis1430),
  as.data.frame(cm_bon1900), as.data.frame(cm_bon2100),
  as.data.frame(cm_bou1240), as.data.frame(cm_bou1440), as.data.frame(cm_bou1620),
  as.data.frame(cm_cham1250), as.data.frame(cm_cham1470), as.data.frame(cm_cham1710), as.data.frame(cm_cham1890),
  as.data.frame(cm_dev1500),
  as.data.frame(cm_lori1370), as.data.frame(cm_lori1620), as.data.frame(cm_lori1800))

df <- data.frame(
  plot = c("ant1400", "ant1610", "ant1750", 
           "arg1420", "arg1620", "arg1790", 
           "arm1520", 
           "bis1050", "bis1230", "bis1430", 
           "bon1900", "bon2100", 
           "bou1240", "bou1440", "bou1620",
           "cham1250", "cham1470", "cham1710", "cham1890",
           "dev1500",
           "lori1370", "lori1620", "lori1800"),
  
  richness = c(32, 27, 59, 25, 33, 28, 86, 14, 47, 55, 45, 37, 19, 20, 37, 17,
               22, 45, 63, 37, 15, 16 ,37),
  metriche)

######### SECONDA PARTE

metriche2 <- rbind(
  as.data.frame(cm_mer1600), as.data.frame(cm_mer1820), as.data.frame(cm_mer2000),
  as.data.frame(cm_mon1500), as.data.frame(cm_mon1730),
  as.data.frame(cm_nev2010),
  as.data.frame(cm_pai1700), as.data.frame(cm_pai1900),
  as.data.frame(cm_pec0962), as.data.frame(cm_pec1152), as.data.frame(cm_pec1375), as.data.frame(cm_pec1578),
  as.data.frame(cm_rac0730), as.data.frame(cm_rac0950),
  as.data.frame(cm_rbi1070), as.data.frame(cm_rbi1310),as.data.frame(cm_rbi1500), as.data.frame(cm_rbi1550),
  as.data.frame(cm_ris1900),
  as.data.frame(cm_sap1250), as.data.frame(cm_sap1500), as.data.frame(cm_sap1690))

df2 <- data.frame(
  plot = c("mer1600", "mer1820", "mer2000", 
           "mon1500", "mon1730", 
           "nev2010",
           "pai1700", "pai1900", 
           "pec0962", "pec1152", "pec1375", "pec1578",
           "rac0730", "rac0950", 
           "rbi1070", "rbi1310", "rbi1500", "rbi1550",
           "ris1900", 
           "sap1250", "sap1500", "sap1690"),
  
  richness = c(10, 27, 42, 23, 74, 48, 44, 46, 5, 25, 25, 63, 39,
               47, 67, 63, 99, 39, 45, 43, 63, 67),
  metriche2)

######### TERZA PARTE

metriche3 <- rbind(
  as.data.frame(cm_sau1550), as.data.frame(cm_sau1750), as.data.frame(cm_sau1900),
  as.data.frame(cm_seys0460),as.data.frame(cm_seys0615),as.data.frame(cm_seys0840), as.data.frame(cm_seys1035),as.data.frame(cm_seys1350), as.data.frame(cm_seys1500),
  as.data.frame(cm_tan1420), as.data.frame(cm_tan1700), as.data.frame(cm_tan1890),
  as.data.frame(cm_ten1430), as.data.frame(cm_ten1670), as.data.frame(cm_ten1890),
  as.data.frame(cm_uba1150), as.data.frame(cm_uba1425), as.data.frame(cm_uba1630), as.data.frame(cm_uba1850),
  as.data.frame(cm_van1400), as.data.frame(cm_van1630), as.data.frame(cm_van1800), as.data.frame(cm_van2020),
  as.data.frame(cm_vaul0710), as.data.frame(cm_vaul0830), as.data.frame(cm_vaul1100),as.data.frame(cm_vaul1290),
  as.data.frame(cm_vcha1910),
  as.data.frame(cm_vtn0925), as.data.frame(cm_vtn1130), as.data.frame(cm_vtn1340), as.data.frame(cm_vtn1510), as.data.frame(cm_vtn1675),
  as.data.frame(cm_vts0660), as.data.frame(cm_vts0840), as.data.frame(cm_vts1040), as.data.frame(cm_vts1260), as.data.frame(cm_vts1455))

df3 <- data.frame(
  plot = c("sau1550", "sau1750", "sau1900", 
           "seys0460", "seys0615", "seys0840",
           "seys1035", "seys1350", "seys1500", 
           "tan1420", "tan1700", "tan1890",
           "ten1430", "ten1670", "ten1890", 
           "uba1150", "uba1425", "uba1630", "uba1850",
           "van1400", "van1630", "van1800", "van2020", 
           "vaul0710", "vaul0830", "vaul1100", "vaul1290", 
           "vcha1910", 
           "vtn0925", "vtn1130", "vtn1340", "vtn1510", "vtn1675", 
           "vts0660", "vts0840", "vts1040", "vts1260","vts1455"),
  
  richness = c(18, 11, 62, 43, 44, 28, 23, 16, 31, 41, 18, 34, 36, 49, 49, 27, 
               40, 41, 56, 24, 28, 66, 59, 21, 36, 32, 39, 45, 33, 29, 19, 9, 
               11, 46, 42, 48, 39, 8),
  metriche3)

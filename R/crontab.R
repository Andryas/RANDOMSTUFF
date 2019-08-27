#!/usr/bin/env Rscript

library(cronR)

# Selenium ---------------------------------------
cmd <- cron_rscript("dockerRSelenium.R")
cron_add(cmd, at = "7:00", id = "selenium", tags = "docker",
         description = "Inicia server para uso do Selenium.")    

# Superbid ---------------------------------------
cmd <- "Rscript -e \"NonParametric::superbid(task = 'order')\""
cron_add(cmd, at = "8:30", id = "superbid_order", tags = "webscraping",
         description = "Coleta anúncios do dia")

cmd <- "Rscript -e 'NonParametric::superbid(task = 'collect')'"
cron_add(cmd, at = "21:00", id = "superbid_collect", tags = "webscraping",
         description = "Coleta fechamentos do dia")





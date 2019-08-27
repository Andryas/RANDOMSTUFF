#!/usr/bin/env Rscript
# Sem VNC

source("/home/andryas/Documentos/GitHub/RANDOMSTUFF/R/awpass.R")

x <- system(paste0("echo ", awpass(), " | sudo -S docker ps"), intern = TRUE)
if (!any(stringr::str_detect(x, "selenium/standalone-firefox:2.53.1"))) {
    system(
        paste0("echo ", awpass()," | sudo -S docker run -d -p 4445:4444 selenium/",
               "standalone-firefox:2.53.1")
    )
}

# Com VNC

# sudo docker run -d -p 4445:4444 -p 5901:5900 selenium/standalone-firefox-debug:2.53.1

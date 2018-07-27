source("functions/confidential.R")

rmarkdown::render("app_report.Rmd")

mailR::send.mail(from = get_item("sender"),
                 to = get_item("receiver"),
                 subject = paste0(format(Sys.Date(), "%B %d, %Y"), " App Report"),
                 body = " ",
                 smtp = list(host.name = "smtp.gmail.com", port = 465, 
                             user.name = get_item("sender"), 
                             passwd = get_item("pw"), 
                             ssl = TRUE),
                 authenticate = TRUE,
                 send = TRUE,
                 attach.files = c("app_report.html"),
                 debug = TRUE)

## Download LFPS data table

pt_url <- RCurl::getURL("https://lfps.usgs.gov/helpdocs/productstable.html")
product_table <- XML::readHTMLTable(pt_url)

usethis::use_data(product_table, overwrite = TRUE, internal = TRUE)

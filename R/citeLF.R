
#' Cite LANDFIRE data products
#'
#' @param lf_api A landfire_api object
#' @param check_updates logical. If TRUE the the file will download the most
#'   recent data product information. The
#'
#' @return
#' @export
#'
#' @examples
citeLF <- function(lf_api, check_updates = TRUE){
  # Checks
  stopifnot("arguement `lf_api` must be a `landfire_api` object" = inherits(resp, "landfire_api"))

  if(check_updates == FALSE){
    warning("`check_updates` == FALSE. To ensure the most recent product table is used set `TRUE`.")
  }
  # End Checks

  products <- strsplit(lf_api$request$query$Layer_List, ";")

  match <- lapply(products[[1]], grepl, product_table$`NULL`$`Layer Name(Use for Layer_List parameter)`)

}

.dwl_producttbl <- function() {
  pt_url <- RCurl::getURL("https://lfps.usgs.gov/helpdocs/productstable.html")
  pt <- XML::readHTMLTable(pt_url)
}

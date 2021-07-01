#' get_schwab
#'
#' Translates German to Swabian
#'
#'
#' @param txt provide a text you want to translate from German into Swabian (a maximum of 1009 characters per call)
#' @export
get_schwab <- function(txt) {

  if(stringr::str_count(txt)>1009){
    stop("Your text should be shorter than 1009 characters.")
  }

  html <- rvest::session("https://www.topster.de/deutsch-schwaebisch/")
  schwabform <- rvest::html_form(html)[[2]]

  schwabform_in <- rvest::html_form_set(schwabform, text = txt)

  resp <- rvest::html_form_submit(schwabform_in)

  fin <- rvest::read_html(resp) %>%
    rvest::html_nodes(".borderarea") %>%
    rvest::html_text() %>%
    stringr::str_squish()

  return(fin)
}

#' get_bairisch
#'
#' Translates German to Bavarian
#'
#'
#' @param txt provide a text you want to translate from German into Bavarian
#' @export
get_bairisch <- function(txt) {
  html <- rvest::session("https://www.respekt-empire.de/Translator/?page=translateEngine")

  bayerform <- rvest::html_form(html)[[1]]
  bayerform_in <- rvest::html_form_set(bayerform, tr_text = txt)
  resp <- rvest::html_form_submit(bayerform_in)
  fin <- rvest::read_html(resp) %>% rvest::html_nodes("#translatedtext") %>% rvest::html_text() %>% stringr::str_squish()
  return(fin)
}

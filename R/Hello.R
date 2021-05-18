#' Hello World
#'
#' `hello` says _'Hello, world!'_
#'
#' @param who
#' Character string name of recipient
#' @param lang
#' language code from langdata default "en", "fr" "it" "es" "de"
#' @param langdata
#' dataframe first column named code for language code string second column named hello for hello string in corresponding language
#'
#' @return `'Hello, who!'` but in the specified language
#'
#' @export

hello <- function(who, lang = "en", langdata = language) {
  a <- ifelse(langdata$code == tolower(lang), TRUE, FALSE)
  h <- langdata$hello[a]
  stringr::str_c(paste(h, who))
}

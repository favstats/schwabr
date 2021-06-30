
<!-- README.md is generated from README.Rmd. Please edit that file -->

# schwabr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `schwabr` is to translate German into Swabian (German
dialect). `schwabr` is built upon [this
tool](https://www.topster.de/deutsch-schwaebisch/) and simply provides
an interface to it.

## Installation

You can install the development version of `schwabr` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("favstats/schwabr")
```

## Example

This is a basic example:

``` r
library(schwabr)
## basic example code
```

``` r
get_schwab("Was geht heute noch meine Kerle")
#> [1] "Was gohd heud no mai Kerlee"
```

``` r
get_schwab("arbeiten, arbeiten, Haus bauen")
#> [1] "schaffe, schaffe, Häusle baua"
```

``` r
get_schwab("Ich würde gerne Maultaschen essen. Oder doch vielleicht Spätzle mit Soße.")
#> [1] "I würd gern Herrgottsbscheiserle essa. Odr do vielleichd Schbädzle mid Soße."
```

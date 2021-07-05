
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
```

``` r
get_schwab("Heute gab es zum Frühstück ein Brötchen mit Marmelade.")
#> [1] "Heud gab's zom Frühschdügg a Weckle mid Gsälz."
```

``` r
get_schwab("Mein Haus erreiche ich manchmal mit dem Zug schneller als mit meinem Wagen.")
#> [1] "Mai Häusle erreiche i älls mid däm Zügle nore als mid moim Wägele."
```

``` r
get_schwab("Gibst du mir etwas Klebstoff, damit ich die Sticker ankleben kann. Ich schlag dann ganz arg darauf. Hoffentlich ist das nicht gleich kaputt.")
#> [1] "Gibsch mir ebbes Bäbp, damid i die Bäbper anbäbba kann. I batsch noh ganz arg druff. Hoffendlich isch des ned gloi hee."
```

``` r
get_schwab("arbeiten, arbeiten, Haus bauen")
#> [1] "schaffe, schaffe, Häusle baua"
```

``` r
get_schwab("Ich würde gerne Maultaschen essen. Oder doch vielleicht Spätzle mit Soße.")
#> [1] "I würd gern Herrgottsbscheiserle essa. Odr do vielleichd Schbädzle mid Soße."
```

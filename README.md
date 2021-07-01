
<!-- README.md is generated from README.Rmd. Please edit that file -->

# schwabr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of `schwabr` is to translate German into Swabian (German
dialect) and other German dialects. `schwabr` is built upon tools such
as [this](https://www.topster.de/deutsch-schwaebisch/) and
[this](https://www.respekt-empire.de/Translator/?page=translateEngine);
and simply provides an interface to them.

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

``` r
get_bairisch("Guten Tag. Mein Name ist Franz Beckenbauer. Ich komme aus München und da bin ich daheim.")
#> [1] "Guadn Dog. Mei Nama is Franz Beckenbaua. I kimm aus Minga und do bin i dahoam."
```

``` r
get_bairisch("Ich würde gerne Kartoffelkäse essen. Heute habe ich Brötchen zum Frühstück gegessen. Tschüss!")
#> [1] "I würde gern Erdapfekaas essn. Heid hob i Semme zum Friahstück ggssn. Servus!"
```

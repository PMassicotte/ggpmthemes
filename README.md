
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggpmthemes

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/PMassicotte/ggpmthemes.svg?branch=master)](https://travis-ci.org/PMassicotte/ggpmthemes)
<!-- badges: end -->

Simple R package with custom ggplot2 themes.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("PMassicotte/ggpmthemes")
```

## Example

### Theme Poppins

``` r
library(ggpmthemes)
library(ggplot2)

p <- ggplot(ToothGrowth, aes(x = dose, y = len, group = dose)) +
  geom_boxplot(aes(fill = factor(dose))) +
  facet_wrap(~supp)

p +
  theme_poppins()
```

<img src="man/figures/README-example-1.svg" width="100%" />

``` r

p +
  theme_exo2()
```

<img src="man/figures/README-example-2.svg" width="100%" />

Works also with `geom_text()`

``` r
p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars))) +
  geom_text(check_overlap = TRUE)

p +
  theme_poppins()
```

<img src="man/figures/README-unnamed-chunk-2-1.svg" width="100%" />

``` r

p +
  theme_exo()
```

<img src="man/figures/README-unnamed-chunk-2-2.svg" width="100%" />

Please note that the ‘ggpmthemes’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.

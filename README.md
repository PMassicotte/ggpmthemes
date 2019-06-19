
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggpmthemes

<!-- badges: start -->

<!-- badges: end -->

Simple R package with custom ggplot2 templates.

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

ggplot(ToothGrowth, aes(x = dose, y = len, group = dose)) +
  geom_boxplot(aes(fill = factor(dose))) +
  facet_wrap(~supp) +
  theme_poppins()
```

<img src="man/figures/README-example-1.svg" width="100%" />

Works also with `geom_text()`

``` r
ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars))) +
  geom_text() +
  theme_poppins()
```

<img src="man/figures/README-unnamed-chunk-2-1.svg" width="100%" />

Please note that the ‘ggpmthemes’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.

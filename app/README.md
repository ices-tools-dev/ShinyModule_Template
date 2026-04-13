# ICES Template for contributing a module to an ICES Shiny App

## Overview




## Requirements

You must only modify
* `mod_template.R`
* `utilities_template.R`

## Building and checking

Any static data you use in your app must be documented in the [taf folder](https://github.com/ices-tools-dev/ShinyModule_Template/tree/main/taf)

To build and test your app make sure R is in the app folder of the repository

```r
# some R code to show how to build and test

# update app data folder (should provide this as a function in icesUtils)
od <- setwd("taf")
TAF::taf.boot()
TAF::source.all()

# copy data into app ?
TAF::cp("data", "../app/data")
setwd(od)

# run app:
shiny::runApp("app)
```

## Details

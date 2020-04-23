## ---- message=FALSE, warning=FALSE, include=FALSE------------------------
options(
  htmltools.dir.version = FALSE, # for blogdown
  width = 80,
  tibble.width = 80
)

knitr::opts_chunk$set(
  fig.align = "center"
)

htmltools::tagList(rmarkdown::html_dependency_font_awesome())

library(dplyr)
library(purrr)
library(tidyr)
library(magrittr)
library(ggplot2)
library(gapminder)


## ----eval=F--------------------------------------------------------------
## my.vec1 <- c("some","word") # this is a comment
## my.vec2 <- c("some","other","word") # this is also a comment


## ----eval=F--------------------------------------------------------------
##  save(list=c("my.vec1","my.vec2"),file = "MyCharVecs.RData")


## ----eval=F--------------------------------------------------------------
## load("MyCharVecs.RData")


## ------------------------------------------------------------------------
getwd()


## ---- eval=FALSE---------------------------------------------------------
## setwd("C:/Users/dtr/theDirectory")


## ------------------------------------------------------------------------
data(gapminder)
China <- gapminder[gapminder$country == "China",]
head(China, 4)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp))


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, aes(x = year, y = lifeExp))


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##     geom_point()


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, aes(x = year, y = lifeExp)) +
    geom_point()


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##     geom_point(color = "red", size = 3)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, aes(x = year, y = lifeExp)) +
    geom_point(color = "red", size = 3)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year")


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year")


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") + ylab("Life Expectancy")


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + ylab("Life Expectancy")


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy in China")


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy in China")


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy in China")  +
##   theme_bw()


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy in China") +
  theme_bw()


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy in China")  +
##   theme_bw(base_size = 14)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy in China") +
  theme_bw(base_size = 14)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy in China")  +
##   theme_bw(base_size = 14)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy in China") +
  theme_bw(base_size = 14)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp)) +
##   geom_line(color = "red") +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy in China")  +
##   theme_bw(base_size = 14)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp)) +
  geom_line(color = "red") +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy in China") +
  theme_bw(base_size = 14)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country)) +
##   geom_line(color = "red") +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy in China")  +
##   theme_bw(base_size = 14)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(color = "red", size = 0.5) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy in China")  +
  theme_bw(base_size = 14)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            colour = continent)) +
##   geom_line(color = "red",
##             lwd = 0.3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 14)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country,
           colour = continent)) +
  geom_line(color = "red",
            lwd = 0.3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 14)


## ----  eval=FALSE--------------------------------------------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line(lwd = 0.3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 8)


## ----  echo=FALSE, fig.height=3, fig.width=3.5---------------------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country,
           color = continent)) +
  geom_line(lwd = 0.3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 8)


## ----  eval=FALSE, echo=TRUE, fig.height=4, fig.width=4.5----------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line(lwd = 0.3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 8) +
##   facet_wrap(~ continent)


## ----  eval=TRUE, echo = FALSE, fig.height=5, fig.width=6----------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line(lwd = 0.3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 8) + 
  facet_wrap(~ continent)


## ----  eval=FALSE, echo=TRUE, fig.height=4, fig.width=4.5----------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line(lwd = 0.3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 8) +
##   facet_wrap(~ continent) +
##   theme(legend.position = c(0.8, 0.25))


## ----  eval=TRUE, echo = FALSE, fig.height=5, fig.width=6----------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line(lwd = 0.3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 9) + 
  facet_wrap(~ continent) +
  theme(legend.position = c(0.8, 0.25))


## ----  eval=FALSE, echo=TRUE, fig.height=4, fig.width=4.5----------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line(lwd = 0.3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 8) +
##   facet_wrap(~ continent) +
##   theme(legend.position = c(0.8, 0.25))


## ----  eval=TRUE, echo = FALSE, fig.height=5, fig.width=6----------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line(lwd = 0.3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 9) + 
  facet_wrap(~ continent) +
  theme(legend.position = "none")


## ----  eval=FALSE, echo=TRUE, fig.height=3, fig.width=8------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line(lwd = 0.3) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 8) +
##   facet_grid(cols = vars(continent)) +
##   theme(legend.position = "none")


## ----  eval=TRUE, echo = FALSE, fig.height=2.5, fig.width=8--------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line(lwd = 0.3) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 8) + 
  facet_grid(cols = vars(continent)) +
  theme(legend.position = "none")


## ----  eval=FALSE, echo=TRUE, fig.height=3, fig.width=8------------------
## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp, group = country)) +
##   geom_line(lwd=0.1, alpha=0.5) +
##   geom_line(stat = "smooth", method = "loess",
##             aes(group = continent, color = continent)) +
##   xlab("Year") + ylab("Life Expectancy") +
##   ggtitle("Life expectancy over time")  +
##   theme_bw(base_size = 8) +
##   facet_grid(cols = vars(continent)) +
##   theme(legend.position = "none")


## ----  eval=TRUE, echo = FALSE, fig.height=2.5, fig.width=8--------------
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(lwd=0.1, alpha=0.5) +
  geom_line(stat = "smooth", method = "loess", #<<
            aes(group = continent, color = continent)) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 8) + 
  facet_grid(cols = vars(continent)) +
  theme(legend.position = "none")


## ----  eval=TRUE, echo=TRUE, fig.height=3, fig.width=8-------------------
my.fist.plot <- ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(lwd=0.1, alpha=0.5) +
  geom_line(stat = "smooth", method = "loess", #<<
            aes(group = continent, color = continent)) +
  xlab("Year") + ylab("Life Expectancy") +
  ggtitle("Life expectancy over time")  +
  theme_bw(base_size = 8) + 
  facet_grid(cols = vars(continent)) +
  theme(legend.position = "none")


## ----  eval=TRUE, echo=TRUE, fig.height=3, fig.width=8-------------------
my.fist.plot


## ----  eval=TRUE, echo=TRUE, fig.height=3, fig.width=8-------------------
my.fist.plot + theme(legend.position = "bottom")


# Rdlazer
**R course materials**

### How this came about

<font size = 1> *(13th April 2020)* </font>

In early 2020 I decided to teach my colleagues to use R. I worked in a molecular biology laboratory where I was the most kwonledgeable person when it came to data processing, etc. I knew I would leave the lab sooner or later and I wanted the others to be able to get by without me. But my main motivation was I was quite fed up with looking at Excel-generated barplots at our weekly meetings.

What was supposed to be three or four small meetings of just a few people escalated into a series of 2-3 hour bi-weekly lectures (four and counting) with well over a dozen participats. We also had to move the lectures online due to the Chinese plague.

I prepared some materials for demonstrations during the lectures. I also started making notes after each lecture and homework assignments. Creating a package seemed to be the best way of distributing these materials and updating them in time. And so, here we are.

------



### Who this is for

This course is for you if:

- you have never worked with R;
- you have no idea about programing at all;

If you are desperatly trying to make a deadline and need some quick pointers, your time will be better spent elswhere. Come back when you can spare a week or so.

<br>

You might also benefit if:

- you have had a quick introduction into R and can do some topical work but don't really understand what you're doing
- you have considerable experience in R but never delved into the structure of the language

If you ever created your own tools with R or built a package, there's a good chance know all of this already.

------



### What is in here

You will learn:

- the most basic programming concepts, with an R spin
- how to communicate with R (giving and receiving information)
- how information is organized in R (data structures)
- how to make R do things for you (using functions)
- how to teach R new tricks (creating functions)
- how to work with logic, numbers, and text
- how to load, clean and format your data
- how to show and look at data
- how to read documentation

Hopefully, by the time we're done you'll be able to solve your own problems.

<br>

You will **not** learn:

- object oriented programming: S4, R6 and ReferenceClasses
- advanced functional programming: you'll get what you need for daily work but nothing really fancy
- metaprogramming: this would be needlessly confusing at this stage
- statistics: I will only cover the very basics and I have no formal education in statistics myself
- how to write documentation

------



### Be warned

1. This is a supplement to the lectures and not standalone learning material. I tried to make the notes self-contained but they are notes after all so you may find you are missing some context at times.
2. This is my own perspective on working with R and it is based on my own experience. As such it is not comprehensive.
3. I do delve a little deeper than your typical R primer.

------



### How to use this package

1. First you must install R on your system. Google "download R" to find appropriate installation files.

    When installing R, I suggest you do not include message translations. You want to aquaint yourself with the messages in English as that is the language the documentation is written in as well as the language you will most likely find help in on the Internet.

<br>

2. Once you've installed R, you will also want RStudio, which provides a convenient working environment. It is possible to use R without RStudio but it makes things so much easier.

<br>

3. Install the `devtools` package along with its dependecies. To do this, start RStudio and go to the Console, which should occupy the majority of the RStudio window. Once there, run the following command:
```
install.packages('devtools', dependencies = TRUE)
```

<br>

4. Install the `Rdlazer` package (this one) with:
```
devtools::install_github("olobiolo/Rdlazer", build_vignettes = TRUE)
```
As I add material to the package, you will need to reinstall it to gain access to the new features.

<br>

Once `Rdlazer` is installed:

- view notes:
```
browseVignettes("Rdlazer")
```

<br>

- attach the package to the current session:
```
library(Rdlazer)
```
<br>

- view homework assignments (attach the package first):
```
?homework
```
<br>

- see how homework hints work (attach the package first):
```
?hint
```

<br>

------



I do hope you will find this accessible. All feedback will be welcome.

If you want to suggest more topics to cover, drop me a line.

All the best, <br>
Aleks

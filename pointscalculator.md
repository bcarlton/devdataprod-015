Weight Watchers Points Calculator
========================================================
author: Brian Carlton
date: 19 June 2015
transition: zoom
[GitHub repo](https://github.com/bcarlton/devdataprod-015)

What does it do?
========================================================

- Calculates Weight Watchers point values for foods based on fat, carbohydrate, fiber and protein content.
- Responds to nutritional label origin: considers the difference between UK(ProPoints) and US(PointsPlus) labels.
- See this [link](https://en.wikipedia.org/wiki/Weight_Watchers#PointsPlus_.28US.3B_Nov_2010-.29) for more information about the point values.
- DISCLAIMER: This is not an officially endorsed Weight Watchers application.

Formula demo
========================================================
left: 30%
Here is the point value for a serving of some Light Butter Popcorn from a US label.

***


```r
calcPoints <- function(protein, carbohydrates, fat, fiber, country){
  if(country=="US") {
   max(round(protein/10.9375 + carbohydrates/9.2105 + fat/3.8889 - fiber/12.5, 0))
  } else {
    max(round(protein/10.9375 + carbohydrates/9.2105 + fat/3.8889 + fiber/35, 0))
  }}
calcPoints(5, 36, 8, 6, "US")
```

```
[1] 6
```

Hardware Agnostic
========================================================
left: 70%
- The application is web based, so it doesn't require a specific OS to use.
- Can be accessed with any html5 compatible browser.
- Uses mobile friendly styles to encourage use on a tablet/smartphone.

***

![html5](HTML5_Logo_256.png)

Features Coming
=======================================================

- Ability to add and store entries.
- Analytics on stored food entries.


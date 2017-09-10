% Geographic Data Science - Lecture IX
% Causal Inference
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* Correlation Vs Causation
* Causal inference
* Why/when causality matters
* Hurdles to causal inference & strategies to overcome them

#
## Correlation Vs Causation

##

<center>
*"Association breeds similarity"* (sometimes)
</center>

<center>
<small>
Nasir bin Olu Dara Jones (a.k.a. *Nas*)
</small>
</center>

## Correlation Vs Causation

Two fundamental ways to look at the relationship between two (or more)
variables:

<div class="fragment">
**`Correlation`**

Two variables have **co-movement**. If we know the value of one, we know something
about the value of the other one.
</div>

<div class="fragment">
**`Causation`**

There is a **"cause-effect"** link between the two and, as a result, they display
co-movement.
</div>

## Correlation Vs Causation

* Both are useful, but for different purposes

* Causation *implies* correlation but **not** the other way around

* It is vital to keep this distinction in mind for meaningful and credible analysis

## Examples

*Sign correlation? Causal link?*

Take a guess (2mins)...

* Temperature and ice-cream consumption 
   <span class="fragment"> $\rightarrow$ **Positive**. **Positive**.
* Non-commercial space launches & Sociology PhDs awarded
* Crime & policing
* IMD Moran Plot in Liverpool

## {data-background=../content/lectures/figs/l10_spurius.svg}

[[Source](http://tylervigen.com/spurious-correlations)]

## Examples

*Positive or negative correlation? Causal link?*

Take a guess (2mins)...

* Temperature and ice-cream consumption $\rightarrow$ **Positive**. **Positive**.
* Non-commercial space launches & Sociology PhDs awarded $\rightarrow$ **Positive**. **None**.
* Crime & policing
   <span class="fragment"> $\rightarrow$ **Positive**. **Negative**.
* IMD Moran Plot in Liverpool

## {data-background=../content/lectures/figs/l05_moranplot_std.png}

## Examples

*Positive or negative correlation? Causal link?*

Take a guess (2mins)...

* Temperature and ice-cream consumption $\rightarrow$ **Positive**. **Positive**.
* Non-commercial space launches & Sociology PhDs awarded $\rightarrow$ **Positive**. **None**.
* Crime & policing $\rightarrow$ **Positive**. **Negative**.
* IMD Moran Plot in Liverpool $\rightarrow$ **Positive**. **?**

#
## Causal inference
## 

<iframe width="560" height="315"
src="https://www.youtube.com/embed/JA5s-Uh6q8s" frameborder="0"
allowfullscreen></iframe>

<center>
[[Source](https://www.youtube.com/watch?v=JA5s-Uh6q8s)]
</center>

#
## *Why/When get causal?*

## Why

* Most often, we are interested in understanding the **processes** that *generate*
  the world, not only in observing its outcomes
* Many of these processes are only **indirectly observable** through
  **outcomes**
* The only way to link both is through **causal channels**

## When

Essentially when the **core interest** is to find out if **something *causes*
something else**

* Policy interventions
* Medical trials
* Business decisions (product/feature development...)
* Empirical (Social) Sciences
* ...

## When not (necessarily)

<div class='fragment'>
**`Exploratory analysis`**

When you are not sure what you are after, inferring causality might be too
high of a price to pay to get a sense of the main relationships
</div>

<div class='fragment'>
**`Predictive settings`**

**Interest** not in understanding the underlying
mechanisms but want to obtain **best possible estimates** of a variable you do not have by
combining others you do have

<small>
E.g. Population density in a specific point using population density in all
available nearby locations
</small>
</div>

#
## Hurdles to causal inference
## Hurdles to causal inference
Causation *implies* Correlation

Correlation *does **not** imply* Causation

*Why?*<img class='fragment' src="../content/lectures/figs/l05_moranplot_std.png" alt=""
style="width:175px;height:175px;border:0px;" />

<div class="fragment">
* Reverse causality 
* Confounding factors/endogeneity
</div>

## Reverse causality

There *is* a causal link between the two variables but it either runs the
oposite direction as we think, or runs in both

<div class='fragment'>
E.g. Education and income
</div>

## Confounding factors

Two variables are correlated because they are *both* determined by other,
unobserved, variables (factors) that *confound* the effect

<div class='fragment'>
E.g. Ice cream and cold beverages consumption 
</div>

#
## Strategies
## 

*Is there any way to overcome reverse causality and confounding factors to
recover causal effects?*

<span class='fragment'>
The key is to get an *exogenous source of variation*

## Strategies

<div class="fragment">
**`Randomized Control Trials`**

*Treated* and *control* groups

Probability of treatment is independent of everything else
</div>

<div class="fragment">
**`Quasi-natural experiments`**

Like a RCT, but that just *"happen to occur naturally"* (natural dissasters,
exogenous law changes...)
</div>

<div class="fragment">
**`Econometric techniques`**

For the interested reader: space-time regression, instrumental variables, propensity
score matching, differences-in-differences, regression discontinuity...
</div>

## So, why correlation at all?

<div class="fragment">
Establishing **causality is much harder** than identifying correlation, and
sometimes it is just not possible with a given dataset (e.g. many
observational surveys). 
</div>

<div class="fragment">
... correlation most often *precludes* causation and, depending on the
application/analysis, it is all that is needed.
</div>

<div class="fragment">
It is important to always draw **conclusions based on analysis**, know
what the data can and cannot tell, and stay **honest**.
</div>

#
## Recapitulation

* Correlation does **NOT** imply causation
* Causality implies more than correlation, a direct **effect channel** that is
  **harder** to identify but might be **worthwhile**
* There are several techniques to identify causality, all usually based on
  obtaining **exogenous sources of variation**
* You don't always need causality

##

<center>
<img src="../content/lectures/figs/l10_xkcd.png" alt=""
style="width:800px;height:400px;"/>
</center>

<center>
[[Source](https://xkcd.com/552/)]
</center>

#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'16 - Lecture 9</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.



% Geographic Data Science - Lecture VII
% Grouping Data over Space
%[Dani Arribas-Bel](http://darribas.org)

#
## Today

* The need to group data
* Geodemographic analysis
* Non-spatial clustering
* Regionalization
* Examples "in the wild"

#
## The need to group data
##

<center>
*Everything should be made as simple as possible, but not simpler*
</center>

<div style="text-align:right">
<small>
Albert Einstein
</small>
</div>

## The need to group data

* The world (and its problems) are **complex** and **multidimensional**
* **Univariate** analysis involves focusing **only one** way of measure
  the world

<div class="fragment">
* Sometimes, world issues are best understood as **multivariate**:

    * Percentage of foreign-born Vs. *What is a neighborhood?*
    * Years of schooling Vs. *Human development*
    * Monthly income Vs. *Deprivation*
</div>

## *Grouping* as *simplifying*

* Define a given number of categories based on **many characteristics**
  (multi-dimensional)
* Find the **category** where each observation *fits best*
* **Reduce complexity**, keep all the **relevant information**
* Produce easier-to-understand outputs

#
## Geodemographic analysis
## Geodemographic analysis

* Technique developed in 1970’s attributed to Richard Webber
* **Identify similar neighborhoods** $\rightarrow$ Target urban 
  deprivation funding
* Originated in the **Public** Sector (policy) and spread to the
  **Private** sector (marketing and business intelligence)

## {data-background=../content/lectures/figs/l08_la.jpg}

[Source](gizmodo.com/uncovering-the-early-history-of-big-data-in-1974-los-an-1712551686)

## {data-background=../content/lectures/figs/l08_oac.png}

[Source](http://maps.cdrc.ac.uk)

## 

*How do you segment/cluster observations over space?*

* Statistical clustering
* Explicitly spatial clustering (regionalization)

#
## Non-spatial clustering
## 

**Split** a dataset into **groups** of observations that are **similar within** the group
and **dissimilar between** groups, based on a series of **attributes**

##

**Machine learning**

<div class="fragment">
* The computer *learns* some of the properties of the dataset without the
  human specifying them
</div>

**Unsupervised**

<div class="fragment">
* There is no a-priori structure imposed on the classification $\rightarrow$
  before the analysis, no observations is in a category
</div>

## Intuition

<center>
<img src="../content/lectures/figs/l08_split.png" alt="Clustering"
style="width:750px;height:450px;"/>
</center>

## K-means <small>[[Source](http://simplystatistics.org/2014/02/18/k-means-clustering-in-a-gif/)]</small>

<iframe width="750" height="450" src="https://www.youtube.com/embed/xnWFIgr34Lk" frameborder="0" allowfullscreen></iframe>

## K-means <small>[[Source](http://simplystatistics.org/2014/02/18/k-means-clustering-in-a-gif/)]</small>

<center>
<img src="../content/lectures/figs/l08_kmeans.gif" alt="K-means"
style="width:650px;height:550px;"/>
</center>

## More clustering...

* Hierarchical clustering
* Agglomerative clustering
* Spectral clustering
* Neural networks (e.g. Self-Organizing Maps)
* DBScan
* ...

Different properties, different best usecases

See [interesting comparison](http://scikit-learn.org/stable/modules/clustering.html#overview-of-clustering-methods) table

#
## Regionalization
## 

<span class="fragment">**Spatial**</span> Machine Learning

<span class="fragment">
*Aggregating basic spatial units (**areas**) **into** larger units (**regions**)*

## Regionalization

**Split** a dataset into **groups** of observations that are **similar within** the group
and **dissimilar between** groups, based on a series of 
**attributes**...

<span class="fragment"> ...with the additional constraint observations need to be
**spatial neighbors**</span>

## Regionalization

<ul>
<li class="fragment current-visible"> All the methods aggregate geographical areas into a predefined number of regions, while optimizing a particular aggregation criterion; </li>
<li class="fragment current-visible"> The areas within a region must be geographically connected (the spatial contiguity constraint); </li>
<li class="fragment current-visible"> The number of regions must be smaller than or equal to the number of areas; </li>
<li class="fragment current-visible"> Each area must be assigned to one and only one region; </li>
<li class="fragment current-visible"> Each region must contain at least one area. </li>
</ul>

<div style="text-align:right">
[Duque et al. (2007)](http://irx.sagepub.com/content/30/3/195)
</div>

## Regionalization

* All the methods aggregate geographical areas into a predefined number of regions, while optimizing a particular aggregation criterion;
* The areas within a region must be geographically connected (the spatial contiguity constraint); 
* The number of regions must be smaller than or equal to the number of areas; 
* Each area must be assigned to one and only one region;
* Each region must contain at least one area. 

<div style="text-align:right">
[Duque et al. (2007)](http://irx.sagepub.com/content/30/3/195)
</div>

## {data-background=../content/lectures/figs/l08_abb_london.png}

## Algorithms

* Automated Zoning Procedure (AZP)
* Arisel
* Max-P
* ...

See [Duque et al. (2007)](http://irx.sagepub.com/content/30/3/195) for an
excellent, though advanced, overview

#
## Examples

## Census geographies

<center>
<img src="../content/lectures/figs/l08_census.png" alt="Choropleth"
style="width:800px;height:350px;"/>
</center>

## {data-background=../content/lectures/figs/l01_airbnb.png}

[AirBnb neighborhoods](https://www.airbnb.co.uk/locations)

## {data-background=../content/lectures/figs/l08_livehoods.png}

[Livehoods](http://www.livehoods.org/)

#
## Recapitulation

* Some problems are truly **highly dimensional** and univariate representations
  are not appropriate
* **Clustering** can help reduce complexity by creating **categories** that
  retain statistical information but are easier to understand
* Two main types of clustering in this context:
    * Geo-demographic analysis
    * Regionalization


#
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science'16 - Lecture 7</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.



---
title: 'pylj: A teaching tool for classical atomistic simulation'
tags:
- Geographic Data Science
- Data Science
- GIS
- Computational Geography
authors:
- name: Dani Arribas-Bel
  orcid: 0000-0002-6274-1619
  affiliation: "1, 2"
- name: Andrew R. McCluskey
  orcid: 0000-0003-3381-5911
  affiliation: "1, 2"
- name: Benjamin J. Morgan
  orcid: 0000-0002-3056-8233
  affiliation: 1
- name: Karen J. Edler
  orcid: 0000-0001-5822-0127
  affiliation: 1
- name: Stephen C. Parker
  orcid: 0000-0003-3804-0975
  affiliation: 1
affiliations:
- name: Department of Chemistry, University of Bath
  index: 1
- name: Diamond Light Source
  index: 2
date: 24 June 2018
bibliography: paper.bib
---

# Summary

pylj is an educational software to introduce students to classical atomistic simulation using a Lennnard-Jones potential model [@LENNARD-JONES]. pylj is written in Python (using Cython for pairwise interactions) and uses Jupyter notebooks [@KLUYVER] and Matplotlib [@HUNTER] for visualisation (see example below). It can be easily deployed in a computer laboratory, and students interact with it without needing to use the command line, as would be the case for other molecular dynamics packages like Gromacs[@GROMACS], LAMMPS [@LAMMPS], or DLPOLY [@DLPOLY]. We provide example notebooks in the repository, showing how to use pylj to simulate a 2D gas system using either molecular dynamics or Monte-Carlo methods. A variety of other applications are possible. 

The latest release of the software can be installed via pip, or from source at https://github.com/arm61/pylj. Full documentation can be found at https://pylj.readthedocs.io.

# Statement of Need

As computational science becomes more and more important in the training of undergraduate chemistry and physics students, there is a larger need for easy to use, open-source, sustainable tools that enable student interaction with classical atomistic simulation. pylj offers a simple library of functions from which students can build their own molecular dynamics or Monte-Carlo simulation and easy visualisation, leveraging Matplotlib and the Jupyter notebook framework. As well as using pylj to introduce students to classical atomistic simulation itself, this software can also be used to discuss material properties showing how they may be probed using simulation. pylj enables easy student interaction with commonplace simulation methods in a fast and open-source way, while offering educators tools to build custom visualisation environments allowing attention to be drawn to areas of specific focus for a given application.

# Usage

pylj can be applied in teaching through a variety of methods including lectures or small group tutorials. However, we believe that the most common use of pylj will be in a teaching laboratory setting; with this in mind, we suggest two main areas that could make use of pylj:

1. teaching about simulation algorithms, the mechanics of simulation, and allowing students to build a simulation themselves, 
2. showing how simulation can be used to study physical attributes of chemical systems, consolidating learning typically introduced during lectures.

Some examples of these can be found in the [examples](https://github.com/arm61/pylj/tree/master/examples) directory, in particular the [molecular dynamics](https://github.com/arm61/pylj/tree/master/examples/molecular_dynamics) and [Monte-Carlo](https://github.com/arm61/pylj/tree/master/examples/monte_carlo) examples show how pylj may be used in the teaching of molecular simulations, while the [ideal gas law](https://github.com/arm61/pylj/tree/master/examples/ideal_gas_law) notebook is exemplary of how pylj can be used to present, in an interactive fashion, the deviation from the ideal gas law that is observed following the gas-to-liquid transition. We envision that pylj is applicable to be used at all levels of undergraduate and postgraduate chemistry and physics course, particularly in computational chemistry and statistical mechanics courses.

![](fig1.png)
*Figure 1. An example of the Interactions sampling class during a molecular dynamics simulation [@FIGURE1].*

# Acknowledgements

A.R.M. is grateful to the university of Bath and Diamond
Light Source for co-funding a studentship (Studentship Number
STU0149). B.J.M. acknowledges support from the Royal Society (Grant No. UF130329).

# References

---
title: '<a name="top"></a><img src="https://raw.githubusercontent.com/prostarproteomics/Prostar/master/inst/ProstarApp/www/images/LogoProstarComplet.png"    width="135"/>
**p r o s t a r - p r o t e o m i c s .org**'
output:
  html_document:
   toc: true
   toc_float: true
   theme: united
   toc_depth: 3  # up to three depths of headings (specified by #, ## and ###)
   highlight: tango  # specifies the syntax highlighting style
   #css: my.css   # you can add your custom css, should be in same folder
   includes:
    in_header: google-analytics.html
---
<style>
body {
text-align: justify}
</style>

------

# Home

\color{blue}{\scriptsize{\version}}

## News
**Enjoy the [Zero-install version of Prostar](#zero-install) as well as the new [Online demo](#online-demo)!**

**15/11/2023**

* Prostar version 1.34.2 has been released on the Bioconductor (release 3.18) and is deployed as a [Zero-install](#zero-install) zip.


## About
Prostar is a software tool dedicated to the differential analysis of quantitative data resulting from discovery proteomics experiments.

Prostar is easy to install (see our [Zero-install page](#zero-install)),
easy to use (thanks to its [Shiny](https://shiny.rstudio.com/)-based click-button interface)
and well-documented (see our [reference page](#useful-links)).
Moreover, it has been regularly updated along years to provide state-of-the-art data science methodologies.

## Citation
**Maintaining Prostar as free software is a heavy duty. Please cite the following reference**

> *S. Wieczorek, F. Combes, C. Lazar, Q. Giai-Gianetto, L. Gatto, A. Dorffer, A.-M. Hesse, Y. Cout&eacute;, M. Ferro, C. Bruley and T. Burger*.
DAPAR & ProStaR: software to perform statistical analyses in quantitative discovery proteomics.
**Bioinformatics** 33(1), 135-136, 2017.  
<a href="http://doi.org/10.1093/bioinformatics/btw580" target="_blank">http://doi.org/10.1093/bioinformatics/btw580.</a>

## Presentation
[[./docs/md/presentation.md]]

------

# Software

1. [**Zero-install**](#zero-install)  
The easiest way. Prostar is deployed either as a zip archive (so far only available on Microsoft Windows desktop machines) or as a Docker image (bêta, but ok for Windows, Mac OS X and (Unix/Linux).
2. [**Stand-alone Bioconductor install**](#bioconductor-installs)  
The standard method to install Bioconductor distributed software.
This method works for any operating systems (Unix/Linux, Mac OS X and Windows) 
as long as R is installed.
3. **Server install**  
When one wants Prostar to run on a Unix server, on which remote users connect.
This more advanced type of install is detailed in the [user manual](#useful-links).
4. [**Online demo**](#online-demo)  
Before installing Prostar on your desktop machine, test our online demo!

## Zero-install

### Zip file (only for Windows)


**Remarks:**
1. It is not necessary to already have R installed.  
2. For now, Zero-install is only available for Microsoft Windows machines.  
3. At first launch, an internet connection is necessary to finish the install.  
4. To ensure full compatibility and debugging, the zip file may be available up to few weeks after each Bioconductor release.

Just download the zip file below and unzip it! The unzipped folder contains an executable file which directly launches Prostar.

Download <a href="http://prabig-prostar.univ-lyon1.fr/ProstarZeroInstall/Prostar_1.34.2.zip"  download="Prostar_1.34.2" onclick="ga('event', 'send', { 'event_category': 'file_download',  'event_name': 'Download Prostar_1.34.2.zip'});">**Prostar 1.34.2 zip file**</a>
(Release date: 15/11/2023)


Download <a href="http://prabig-prostar.univ-lyon1.fr/ProstarZeroInstall/Prostar4metabolomics_1.22.8.zip" onclick="gtag('event', 'send', { 'event_category': 'file_download',  'event_label': 'Download Prostar4metabolomics_1.22.8.zip'});">**Prostar4metabolomics 1.22.8 zip file**</a>
(Release date: 22/06/2021)

### **Bêta** Docker image (ok for Unix/Linux, Mac OS X and Windows)
This feature is deployed as a Beta-test, as to give an alternative to the zip
files. The Docker image and the zip file are synchronized and embed identical Prostar versions (to ensure full compatibility and debugging, the zip file and the docker image may be available up to few weeks after each Bioconductor release).

As a prerequisite to run the Docker image, <a href="http://docker.com">Docker</a> must be installed on the computer and the service must be started. 
The Docker image of Prostar is available on <a href="https://github.com/orgs/prostarproteomics/packages">Prostar proteomics's Github webpage</a>. It can be downloaded using the following command:
```
docker pull ghcr.io/prostarproteomics/prostar:1.34.2

```

There are two ways to launch Prostar's container. Using command line, type:
```
docker run -it -p 3838:3838 ghcr.io/prostarproteomics/prostar:1.34.2
```

Then, open your default web browser onto the following URL: http://localhost:3838.

If an executable file is preferred, then create the launch script referred to as 'docker_launch_prostar.sh' with the following lines:

```
#! /bin/sh

docker run -it -p 3838:3838 ghcr.io/prostarproteomics/prostar:1.34.2
wait 5
python -m webbrowser http://localhost:3838
```

Then, make the script runnable and launch Prostar:
```
chmod +x docker_launch_prostar.sh
./docker_launch_prostar.sh
```



## Bioconductor installs

Only stand-alone install is detailed below. For server install, please refer to the user manual.
This type of install works with any operating system among Unix/Linux, Mac OS X and Windows.
However, it is necessary to have the latest version of R (>= 4.3.0 for Prostar 1.30.x) installed in a directory where the user has read/write permissions.

1. Install Bioconductor package manager with the following commands (see
<a href="https://cran.r-project.org/web/packages/BiocManager/vignettes/BiocManager.html" target="_blank">this page</a>
for details):
```R
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(version='3.18')
```

3. Install Prostar:
```R
BiocManager::install("Prostar")
```

3. Launch Prostar:
```R
library(Prostar)
Prostar()
```


## Online demo

An online demo of Prostar software is available at:
<a href="http://live.prostar-proteomics.org/" target="_blank">**http://live.prostar-proteomics.org**</a>

**Remark:** The server hosting the online demo has limited capacities.
Thus, uploading your own dataset may lead to server overload.
To test the online demo, please rely on the toy datasets that are available in "Demo data" (from "Data manager" menu).


## Release notes
[[./docs/md/versionNotes.md]]

[[./docs/md/formerReleases.md]]


------

# Support & resources
## Useful links
[[./docs/md/links.md]]

## Frequently asked questions
[[./docs/md/FAQ.md]]
 
## Forum
 
Our community forum is hosted by the Bioconductor:
<a href="https://support.bioconductor.org/t/prostar/" target="_blank">**https://support.bioconductor.org/t/prostar/**</a>


------

# Community

## Team presentation

### Core team

<a href="https://scholar.google.fr/citations?hl=fr&user=K4CBghYAAAAJ" target="_blank">**Samuel Wieczorek**</a>

<img src="https://github.com/prostarproteomics/Prostar_website/raw/master/docs/img/Sam.png"   width="155"/>

After a first career as IT support technician, Sam obtained an engineering degree (2004) at "Conservatoire National des Arts et Metiers",
followed by a MS degree in computer sciences and a PhD in machine learning (2009) at Grenoble-Alpes University.
Since then, he has been working as a research engineer at EDyP-lab, where he has been developing and maintaining software tools for proteomics.
Sam has been involved in Prostar project since its beginning.
He is the code guru and supervises all the software aspects of the project, such as coding, packaging, deployment,
debugging, graphical user interfaces, etc.


<a href="https://sites.google.com/site/thomasburgerswebpage" target="_blank">**Thomas Burger**</a>

<img src="https://github.com/prostarproteomics/Prostar_website/raw/master/docs/img/Thomas-Burger-155.jpg"   width="155"/>

Tom is a CNRS senior scientist. He holds two MS degrees in computer sciences and applied mathematics (2004), 
a PhD in pattern recognition (2007) and a Habilitation thesis (2017), all from Grenoble Alpes University. 
Tom was an associate professor in machine learning with South Brittany University (2008-2011), before rushing back to his beloved mountains, 
with a CNRS position at EDyP-lab. 
He is the principal investigator of Prostar project.
His expertise focuses on the statistical, methodological and algorithmic aspects of proteomics data analysis.


**Contact us** - firstname.lastname@cea.fr

### Occasional contributors

* <a href="https://scholar.google.fr/citations?hl=fr&user=IJj2oUsAAAAJ" target="_blank">Florence Combes</a>
* <a href="https://research.pasteur.fr/fr/member/quentin-giai-gianetto/" target="_blank">Quentin Giai-Gianetto</a> (Institut Pasteur, France)
* <a href="https://lgatto.github.io/" target="_blank">Laurent Gatto</a>
(Universit&eacute; catholique de Louvain, Belgique)
* <a href="https://scholar.google.fr/citations?hl=fr&user=gHyBfNwAAAAJ" target="_blank">Cosmin Lazar</a>
* <a href="https://scholar.google.fr/citations?hl=fr&user=yYroo3gAAAAJ" target="_blank">Helene Borges</a>
* <a href="https://scholar.google.fr/citations?user=pUQIR6wAAAAJ&hl=fr" target="_blank">Yohann Cout&eacute;</a>
* <a href="https://scholar.google.fr/citations?hl=fr&user=pnV6KrsAAAAJ" target="_blank">Christophe Bruley</a>
* <a href="https://scholar.google.fr/citations?hl=fr&user=DfkciI8AAAAJ" target="_blank">Anne-Marie Hesse</a>
* Alexia Dorffer
* Enora Fremy

### Beta-testing & co.
<img src="https://raw.githubusercontent.com/prostarproteomics/Prostar/master/inst/ProstarApp/www/images/edyp.png"   width="155"/>

The entire EDyP proteomics platform (see <a href="http://www.edyp.fr" target="_blank">www.edyp.fr</a>):
Prostar being permanently hosted by EDyP lab, the first users (the original ones, but also the testers) are naturally the lab members.
They are all warmly acknowledged for their contributions.


## Bug report

To report any issue with Prostar, it is best to use the devoted tab in Prostar software (click on **Bug report** in the **Help menu**),
as it allows easy sharing of the session logs and data (essential to efficient debugging).

However, it is also possible to contact the development team by email (see [team presentation](#team-presentation)).


## Happiness report

**If you are pleased with your Prostar experience**, you can also send us a message (messages are not restricted to bug reports)!  
:-)

Do not forget to [cite Prostar in your publications](#citation)!
<div align="right"><a href="#top"> &uarr; Top</a></div>

### News in Prostar 1.14

#### Bug fixed
* Auto reset of dropdown menu in differential analysis.
* In the feature metadata table, the FC tag has been replaced by 'logFC'.
* In the experimental design table, the column names 'Experiment' and 'Label' have been replaced respectively by 'Sample.name' and 'Condition'.
* Delete the dependency to the package imputeLCMD.
* Tooltip persistance dealt with.

#### New features
* Better managment of dropdown menus in the main menu.
* Add a Bug report tab in the 'Help' menu.
* Reorganization of the menus into Data preprocessing and Data mining.
* Add proportions in logFC distribution plot.
* Add LOESS normalization.
* Add VSN normalization.
* Improve automatic report generation.
* New peptide-to-protein aggregation with fair account of shared peptides.
* Peptide visualization on protein volcano plots.
* Add customisation of colors for plots.


### News in Prostar 1.12

#### Bug fixed
* Normalization: "Sum by columns" has been modified to provide log-abundances compatible with subsequent processing.
* Normalization: Any normalization can now be applied "for each condition independantly" or "globally".
* Imputation: All methods are now only applied "for each condition independantly".

#### New features
* The entire pipeline is now compatible with datasets with more than 2 conditions.
* Descriptive statistics: The expression datasets are colored with respect to the nature of missing value 
(either POV or MEC, see below), even when the value has been imputed.
* Filtering: Manage designs with more than 2 conditions and with conditions containing different number of samples.
* Filtering: More user friendly interface for the string-based filtering (Tab 2).
* Imputation (protein level): Distinction between missing values on an entire condition 
(Missing on the Entire Condition - MEC) and the other ones (Partially Observed Value - POV).
* Imputation (protein level): for POV, it is possible to use SLSA which take into account the experimental design.
* Differential analysis: All tests can be applied on datasets with different number of samples in each condition.
* Differential analysis: Limma takes into account all the hierarchical experimental designs.
* GO analysis: the GeneID nomenclature is now available.

### News in Prostar 1.10

#### Bug fixed
* When the aggregation step has been performed, the interface switches to the first tab of the 'Descriptive Statistics' in order to view informations aout the new dataset (the protein one).
* Implementation of a parallel version of the function which saves the (new) protein dataset after the aggregation step.
* Disable the extra row appearing in the metadata table when convertinga text file to a MSnSet file.
* A new package (readxl) is used to read xls or xlxs files. In certain circumstances, the functions of the previous package openxlsx is not able to decode properly Excel files.
* When converting a new (text or Excel) file in Prostar : the missing values were not registered as expected. Especially, they did not appear in blue in the table above the volcanoplot. Bug fixed
* A bug occured when the user load successively several datasets in Prostar. The previous ones were note correctly erased and this has lead to side effects. This bug is now fixed

#### New features
* Gene Ontology (GO) analysis (Beta version).
* Automatic report generation (Beta).
* Preliminary separation between peptide and protein level pipelines.
* IMP4P method for peptide level imputation.
* DetQuantile method for protein level imputation.
* Tooltip implementation.
* Interactive plots with highcharter.
* Enhancement of the string-based filtering UI


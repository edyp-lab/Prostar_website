
### Roadmap for Prostar 1.22

#### New features
* New low level architecture for improved processing pipeline management.
* Preliminary work to extend Prostar pipelines to metabolimics data.


### Teaser for Prostar 1.20

#### New features
* Improvement of the vizualization for the normalization tool
* Peptide-level test (linear model, PEPA)

### News in Prostar 1.18

#### Bug fixed
* [1.18.1] Bug fixed in the dataset convert tool.
* In the convert tool (build design step), the reordering of conditions is now functional. In the same screen, bug fixed when the user wants to show design examples.
* Export of a dataset when several metadata are selected to be integrated to the export file
* Bug fixed in the navigation bar for each process: the reset button is functional
* Inconsistent behaviour when the user changes a dataset in any process UI

#### New features
* Warning on the FDR if the number of selected peptides/proteins is too small.
* Computation of the number of shared and specific peptides per protein in the aggregation tool. Notably useful for filtering.
* Filters on numerical values.
* New tool for exploring and visualize peptide-protein graphs.
* New navigation principle to switch between differents steps of a process.
* Better default filenames when the user click on downloads Button or on export buttons above the different tables in Prostar


### News in Prostar 1.16

#### Bug fixed
* [1.16.10] Bug fixed in imputation tools (package imp4p) when the dataset has not samples grouped by conditions. Bug fixed which appeared sometimes in the Export tool.
* [1.16.9] Bug fixed in hypothesis testing when the dataset has samples not grouped by conditions
* [1.16.8] Bug fixed: The logFC value calculated by t.test was the opposite as the real one (-log(FC))
* [1.16.7] Bug fixed which have made wrong Fold Change computation in a specific case : when the dataset contains conditions with different number of samples AND the names of the conditions were not in an alphabetic order
* [1.16.6] Delete 'copy to clipboard' button in the 'Bug report' screen
* [1.16.5] Bug fixed in intensity values during conversion
* [1.16.4] Bug fixed when converting into MSnset some datasets with no shared peptides
* [1.16.2] Set 'No' as default value for order conditions in convert data
* [1.16.1] Colors of different conditions in missing values plots ()
* Interactive quantitative data display from volcanoplot.
* Aggregation statistics corrected.
* Differential analysis is now working with Firefox.
* Sum aggregation function is back.
* In string-based filtering, reusing several times the same column is possible.
* Added more numerical precision of p-values in exported dataset (differential analysis)

#### New features
* New customized theme according to Prostar logo colors.
* Uniform organization of the method parameters.
* Three buttons are displayed above each tab to export the data (Copy to clipboard, export to CSV, print).
* In the CV distribution plot (Descriptive statistics), a convenient zoom is predefined.

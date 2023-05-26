
### Roadmap for Prostar 2.0

#### New features
* To Be Announced - Many Great stuffs! 😉

### News in Prostar 1.32.3

#### Bugs fixed
  * Bug fixed while opening xlsx files.
  
  
### News in Prostar 1.32.1

#### New features
  * New selection tool for cell metadata tags (used in the filtering tool, in Descriptive Statistics and Differential Analysis)
  * Export as Excel file: additional sheet with DAPAR and Prostar version number used to process the dataset
  
  
  
### News in Prostar 1.30.7

#### Bugs fixed
  * Buggy plots have been temporarly disabled in aggregation process
  * Bug fixed while converting a text/Excel file to a MSnset file (issue with the versions of Prostar and DAPAR)


  
### News in Prostar 1.30.6

#### Bugs fixed
  * Bug fixed in agregation tool for peptide-level pipeline

  
#### New features
  * A popup windows appears if the dataset which is loaded was built with an older version of Prostar than
  the running one. Prostar will continue to run but the user is informed that unexpected behaviour may happen in this case.
  
### News in Prostar 1.30.5

#### Bugs fixed
  * Bug fixed in the filtering tool with the cell metadata tags


### News in Prostar 1.30.4

#### Bugs fixed
  * Small bug fixed in the normalization tool

  
  
### News in Prostar 1.30.3

#### Bugs fixed
  * In the imputation tool: all imputation methods are functional again
  * Bug fixed in the Student's test (the value of logFC is now correct and consistent with Limma)

  
#### New features
  * In case of error during the execution of some processes(), a popup window - containing the text of the error - will be shown.
  
  
  
  
### News in Prostar 1.30.2

#### Bugs fixed
  * In the normalization tool:
    * the intensity plots (violinplot and boxplot) are displayed again
    * the display of the comparative plot (before and after normalization) is faster, which speeds up the overall normalisation process.
  
  
### News in Prostar 1.30.1
#### New features
  * Differential analysis : a new information has been included concerning the 'push p-value' feature. This information is the number of entities that have been pushed
  * Missing values imputation in pipeline at protein: In the 'Missing on Entire Condition' step, the info text after impuation was confusing. Now, when the imputation has been achieved a more explicit message( giving the number of imputed proteins) is displayed
  * Metacell tags have been renamed. For more information, please got to the FAQ
  

#### Bugs fixed
  * In the filtering tool, when selecting a tag which not appeared in the dataset, all the lines were deleted. This has been fixed. Moreover, the list of tags to choose now reflects only the tags that are really in the dataset and not all the tags available in DAPAR
  * Bug fixed in "Open a MSnset" ("Attempt to select less than one element in get1index")

### News in Prostar 1.28

#### New features
* In the 'Hypothesis testing' tool, the interface for the 'Swap conditions' option has been updated (a collapsible panel has been added).
* Textual information has been added in the imputation tool when the dataset contains no missing values. This prevents any user to run an imputation on such datasets (which made some imputation methods crash)

#### Bugs fixed
* [1.28.5]
  * Improvements of the Differential Analysis tool, especially the information and tooltips related to the volcanoplot.
* [1.28.0]
  * The 'Reset' action button in 'Differential Analysis' has been fixed. Now, the 'Push p-value' widgets are also set back to default values.
  * Bug fixed when exporting a peptide dataset as an Excel file
  * The 'Reload Prostar' button works now (Prostar used to crash when the user clicked on the button)
  * Bug fixed in 'Normalization' tool when normalizing with tags in a 'Specific column'
  * Bug fixed with the Push p-value feature in 'Differential analysis' tool.
  * Prostar can now handle peptide datasets in which the protein accession contains "|" (The problem occurred during  connected component computation)
  * Bug fixed about the display of quantitative metadata in the data explorer (the columns and their names were not aligned)
  * Bug fixed about Prostar freeze when saving the aggregated dataset.


### News in Prostar 1.26

#### New features
* In the 'Convert' tool, implementation of a new way to select the nature of quantitative data for each sample
* Add colors to cells metadata tags in Excel export file
* The 'swap volcanolplot' feature in Differential Analysis has been removed.  It is replaced by a new feature in the 'Hypothesis Test' tool where it is now possible to swap the conditions of any comparison. This leads to a new list of comparisons which are available in the 'Differential analysis' tool.

#### Bug fixed
* [1.26.4]
  * Fixes a bug with the Swap feature in the Hypothesis Test tool. When the user has swaped a first comparison and want to swap a second comparison, the first one was automatically swaped again.
  * Fixed a bug with the Reset button in the differential analysis which did not reset the parameters of the Push p-value tool.
* [1.26.3]
  * The function Prostar() works now when the user wants to launch Prostar via a R console.
  
* [1.26.2]
  * The selection of tooltips in the volcanoplot works now. It no longer stay on the default one but is updated with the current user selection for tooltips. 
  * Bug fixed with the 'Reset' button in the 'Hypothesis Test' tool
  
* [1.26.1]
  * A bug has been fixed in the computation of the t-test (in the Hypothesis test tool). The logFC value for a given
  comparison was swaped and not consistent with the computation of LogFC in Limma.
  * In the Differential Analysis tool, the small info table about the number of selected entities is showed
  * A bug fixed in the Filter tool with the tab 'Quanti. metadata filtering' or with the 'Push p-value' feature in the Differential Analysis tool. Now, both 'keep' and 'delete' options work.
  
* [1.26.0]
  * Bug fixed in demo datasets (package 'DAPARdata') related to the cell metadata tags for quantitative values.
  * A bug in the function which exports datasets to MSnSets has been fixed.
  * 'Aggregation tool': Bug fixed with the 'proteinId' on new aggregated protein dataset.
  * Bug fixed with the feature '#/% of values to delete' when selecting '%'. This bug occurred in the 'Filtering tool > Quanti. metadata filtering' and the 'Differentiel analysis > Push p-value'
  * Bug fixed in select metadata information for Aggregation



### News in Prostar 1.24

#### New features
* Fully operational peptidomics and peptide-level workflows.
*	Addition of a cell metadata tag about quantitative values (it indicates for each condition and each entity (either protein or peptide) whether it is a quantitative, missing or imputed value. 
*	The missing value filtering tool has been replaced by a filter tool that operates on quantitative cell metadata. A more user-friendly GUI is provided.
* Missing values barplots have been generalized to any type of cell metadata tag.
*	The information available in cell metadata is now accounted for during the aggregation step.
*	Better color managment in plots.
* When converting a dataset into a MSnSet object, the log-transformation is run after 0 values have been replaced by NAs.

#### Bug fixed
* [1.24.8]
  * Bug fixed in the Convert data tool (when selecting the identification method of quantitative data). The chechbox widget has been replaced by two radio buttons to improve the GUI experience. When the user choose to select identification methods, it is now mandatory to choose appropriate column names.
  * Add comma as separating character for protIds (Use to generate adjacency matrices)
* [1.24.7]
  * Bug fixed within the 'Convert tool', in the 'Build design' tab where the use of 'Order conditions' did not apply to the quantitative cell metadata. Now, this functionality works.
  * The 'push p-value' feature in the Differential Analysis tool works fine now!
* [1.24.6]
  * Bug fixed with the 'Reset' button in the 'Hypothesis test' processing tool. 
* [1.24.5]
  * Bug fixed with download Excel and csv buttons. Now, it is possible to download the entire table rather than only 153 items.
  * All spaces in column names have been replaced by '_' to standardize names.
  * A 'keyId' field has been in the aggregated dataset. It is the same feature as in the Convert tool but, during the aggregation process, it is set automatically - based on the adjacency matrix)
* [1.24.4]
  * During the conversion process, the following error ("CreateMSnSet: unused argument (indFData=indexForFData") has been fixed.
  * The push p-value interface is now consistent with the one in the filtering tool. Furthermore, the user cannot run successive "Push p-value" operations. if he runs several times the "Push p-value button", the dataset is now automatically reset to the original comparison.
  * Bug fixed in the plot which shows the number of lines with <quant. metadata> tags which appears in the filtering tool (tab "Quanti. metadata filtering") and the menu "Descriptive statistics" (tab "Quantitative nature")
  * The error message "Argument 'obj' is missing with no default" in the preview filtering example (in the tab "Quantitative nature") has been fixed.
* [1.24.3]
  * Update the download functionality to get the list of proteins and peptides that make the aggregation failed.
  * Bugs fixed in plots of 'Quantitative nature' of entities
* [1.24.2]
  * Bug fixed with the Reset button in Differential Analysis, as well as in the 'Push p-value' functionality
* [1.24.1]
  * Bug fixed with the number of digits when displaying numbers (such as in quantitative data tables)
* [1.24.0]
  * Enhancement of the pi0 value selection in differential analysis tool.
  * Bug fixed when the user wants to impute NAs after the normalization tool display (without process any normalization).
  * Bug fixed in differential analysis: The 'Push p-value' function now also works on One-vs-All comparisons.
  * Bug fixed with normalization on some selected proteins.


  
### News in Prostar 1.22

#### New features
* Functionalities enabling the focus on a protein (or a subset of proteins) to compare the normalization options.
* Possibility to apply normalization with respect to a user-defined subset of reference proteins.
* Missing values filtering: It is now possible to tune the filtering option with proportions, in addition to with absolute values.
* Missing values filtering and "Push p-values" (in Differential analysis tool): one can now select either numeric values or percentage of NA or imputed values.
* In DAPAR, implementation of ANOVA tools

#### Bug fixed
* [1.22.10]
  * Bug fixed in convert tool
* [1.22.6]
  * Fixed issue when converting a dataset into MSnSet and select columns which correspond to the origin
  of quantitative values (e.g. 'By_MS/MS', 'By_Matching', etc..)
  * Bug fixed in normalization tool when the user wants to normalize on a selection of protein. Now, there is no need to check 'Synchronize' option to proceed to the normalization.
  * The volcanoplot in the differential analysis tool now updates automatically when the user clicks on the 'Push p-value' button.
* [1.22.5]
  * Bug fixed when Prostar is used with R > 4.0.0 (Convert tool crashes)
  * MEC imputation crashed after POV imputation using KNN
* [1.22.4] 
  * Bug fixed in Welch/Student hypothesis tests.
* Bug fixed in the convert tool, introduced by R-4.0.3,
* The extension of the exported file has been corrected
* Bug fixed in MEC imputation after the POV imputation proceeded with KNN


### News in Prostar 1.20

#### New features
* Implementation of for more complex experimental designs,
* Automatic clustering of protein expression profiles,
* Additional preliminary filtering option for match between run based evidence.

#### Bug fixed
* Typos corrections
* Optimisation of Convert Data tool

### News in Prostar 1.18

#### New features
* Warning on the FDR if the number of selected peptides/proteins is too small.
* Computation of the number of shared and specific peptides per protein in the aggregation tool. Notably useful for filtering.
* Filters on numerical values.
* New tool for exploring and visualize peptide-protein graphs.
* New navigation principle to switch between differents steps of a process.
* Better default filenames when the user click on downloads Button or on export buttons above the different tables in Prostar

#### Bug fixed
* [1.18.6]
  * Due to some instability of cache memory when successively opening several datasets in a Prostar session, data management has been simplified. To work on another dataset than the current one, reloading Prostar first is now necessary (with the button above).  It will restart Prostar with a fresh R session where import menus are enabled 'Dataset manager' menu.
* [1.18.4]
  * Spinner wheels showed during the computation of plots were replaced by a progress bar at the bottom right of the window.
* [1.18.3] 
  * Bug fixed in retro-compatibility with certain MSnset datasets created with previsous versions of Prostar.
  * Bug fixed in the Color settings UI.
* [1.18.2] Bug fixed in the volcanoplots.
* [1.18.1] Bug fixed in the dataset convert tool.
* In the convert tool (build design step), the reordering of conditions is now functional. In the same screen, bug fixed when the user wants to show design examples.
* Export of a dataset when several metadata are selected to be integrated to the export file
* Bug fixed in the navigation bar for each process: the reset button is functional
* Inconsistent behaviour when the user changes a dataset in any process UI

### News in Prostar 1.16

#### New features
* New customized theme according to Prostar logo colors.
* Uniform organization of the method parameters.
* Three buttons are displayed above each tab to export the data (Copy to clipboard, export to CSV, print).
* In the CV distribution plot (Descriptive statistics), a convenient zoom is predefined.

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


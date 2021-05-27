# Pipeline Description in Prostar V1.X


## Pipeline names

|  | Full Protein-level  | Peptidomics  | Metabolomics |Pep2Prot  | Full Peptide-level | 	
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|  Input|  Proteins 	|  Peptides 	| metabolites | Peptides 	|  Peptides 	|
|  Output|  Proteins 	|  Peptides 	| metabolites | Proteins 	|  Proteins 	|
|  Remarks|  original pipeline 	|  similar to original pipeline 	| similar to original pipeline  |  explicit aggregation step 	|  Implicit aggregation (with statistical test) 	|






## Tools


### <span style="color:blue">Metadata filtering</span>

| Method | Full Protein-level	| Peptidomics  | Metabolomics |Pep2Prot  | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
|  Quantitation nature |  X 	|  X |  X	|  X 	|  X 	|
|  String (analytes)   |  X 	| X |  X	|  X 	|  X 	|
|  Numerical (analytes) |  X 	|  X |  X	|  X 	|  X 	|



### <span style="color:blue">Normalization</span>

| Method | Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
|  Global Quantile Alignement|  X 	|  X |  X 	|  X 	|  X 	|
|  Sum by columns|  X 	|  X 	|  X |  X 	|  X 	|
|  Quantile centering|  X 	|  X 	|  X |  X 	|  X 	|
|  Mean centering|  X 	|  X 	|  X |  X 	|  X 	|
|  LOESS|  X 	|  X 	|  X 	|  X |  X 	|
|  VSN|  X 	|  X 	|  X 	|  X |  X 	|


### <span style="color:blue">Imputation</span>

#### POV

| Method | Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
| SLSA	|  X 	| -  	|  X 	| X (prot) 	|-	|
| Det quantile|  X 	| X 	|  X	| X (prot, pep)  	|X	|
| KNN	|  X 	|  X 	|  X 	| X (prot, pep) 	|X	|
| Imp4p |  - 	| X 	|  - 	| X (pep)  	| X	|
|  MLE|  - 	|  X 	|  - 	|  X (pep)  	| X	|

#### MEC

| Method | Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
|  Det quantile|  X 	| -  	| X  	| X (prot) 	|-	|
|  Fixed value|  X 	|  - 	| X 	| X (prot)  	|-	|

#### POV + MEC

| Method | Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
| Imp4p 	|  - 	| X 	|  - 	| X (pep)  	| X	|


### <span style="color:blue">Aggregation</span>

| Method | Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
| Explicit aggregation operator|  - 	|  - 	|   -	|  X 	| - |
|  Statistical test |  - 	|  - 	|   -	|  - 	| X (see below) |

**Explicit aggregation operator:** 
-  already implemented: Sum, mean, mean w/redistribution
- not implemented yet: MSqRobSum, Tukey Median Poolish, etc.


### <span style="color:blue">Hypothesis testing</span>
| Method | Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|:---:|
| Limma|  X 	|  X 	|  X 	|  X 	| - |
|  Welch T-test|  X 	|  X 	|  X 	|  X 	|- |
|  Student T-test|  X 	|  X 	|  X 	|  X 	|- |
|  PEPA |  - 	|  - 	|   -	|  - 	| X |
|  group t-test |  - 	|  - 	|   -	|  - 	| X |


**constrats:**
- ok (binary) : 1vs1, 1vsAll
- todo (binary): 1vsRef, Consecutive, 
- todo (non-binary): ANOVA

**Statistical test:**
- implemented in DAPAR: PEPA (binary contrasts), group t-test (binary contrasts?)
- others: MSqRob (any contrast)

### <span style="color:blue">Peptide-Protein Graph</span>
(Thus needs protein ID from convert tool)

Full Protein-level  	| Peptidomics  | Metabolomics |Pep2Prot | Full Peptide-level |
|:---:|:---:|:---:|:---:|:---:|
|  - 	|  - |  - 	|  X 	|  X 	|
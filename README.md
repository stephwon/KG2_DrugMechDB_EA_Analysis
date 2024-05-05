# KG2 vs. DrugMechDB Entity Analysis

## Purpose

This repository is dedicated to the investigation and analysis of entity normalization between RTX-KG2 (version 2.8.4c & 2.9.0c) and DrugMechDB ([Andrew Su Lab](https://github.com/SuLab/DrugMechDB)). 

## Project Objectives

1. **Investigate Entity (Node) Variances:**
   - Explore and analyze differences between KG2 and DrugMechDB.
   - Conduct entity normalization and alignment between two graph data.
   
2. **Statistical Analysis:**
   - Assess entity normalization and alignment performance.

## Repository Contents
Each script contains the data location and instructions necessary to perform each analysis. To conduct the analysis, use the scripts (`.ipynb`) in the following order below:

1. `node_edge_combine.sh` shell script that combines KG2 node and edge headers together. The node & edge information is separate from its header files. The resulting files are in TSV format with node and edge headers at the top. 

2. `entity_normalization` contains scripts for normalizing DrugMechDB node IDs to the latest Biolink standard. The resulting file is named `NodeID_update_graphs.yaml`

3. `entity_alignment` contains a script to conduct node alignment between KG2 and DrugMechDB. The first step uses node IDs only, whereas the second step uses node names if node IDs do not match.

4. `KG2_vs_DrugMechDB_Analysis_KG2.x.x.ipynb` is *interactive* Jupyter Notebook script that performs statistical analysis for entity alignment.

5. `KG2.8.4c` and `KG2.9.0c` directories contain YAML files of the analysis results and figures (PNG). Each directory contains `figure` directories, which contain the visual output results of the analysis (non-interactive). These figures are saved as PNG files.

## Data
To conduct or reproduce the entity analysis. You will need [DrugMechDB MOA file](https://github.com/SuLab/DrugMechDB/blob/main/indication_paths.yaml) and KG2 versions 2.8.4c and 2.9.0c. Contact [RTX-KG2 team](https://github.com/RTXTeam/RTX) to request access to the knowledge graphs.



### Start of Analysis
To begin your analysis or reproduce the results, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/KG2_DrugMechDB_EA_Analysis.git

2. Navigate the project directory.

3. Import, download, and decompress the data files. The location of the data for each analysis is provided in each Jupyter Notebook script.

4. Open and run the Jupyter Notebook scripts:
   ```bash
   jupyter notebook <name_of_the_script>.ipynb
   ```
This will initiate the analysis and generate the results.

## Note: ##

We recommend you have the following specifications to successfully run the pipeline and the scripts.

• Operating system(s): Linux (Ubuntu)

• Programming language: Shell Script (Bash) and Jupyter Notebook Script with Python 3.8.12 or higher

• Other requirements: Anaconda version 23.7.4

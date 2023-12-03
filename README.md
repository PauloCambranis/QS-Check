# QS-Check
A Bash script that automates the search in bacterial genomes for LuxR and LuxI -like proteins. These are important components for Quorum Sensing in bacteria  

---
## Requirements
1- QS-Check depends on the HMMER package.
2- A folder where to contain the three files in this repo.

---
## Usage
1- Get the files 
```
git clone https://github.com/PauloCambranis/QS-Check
```
2- Give the script execute and write permissions
```
chmod +xw QS_check.sh
```
3- Execute the script
```
./QS_check.sh
```
You will be prompted for a **project name** which could be the name of the bacteria you are researching.
Next, you will have to provide the **path** to the genome file of the bacterium.  If you downloaded the genome from RefSeq, it will be a file named `protein.faa`.

---
## How does it work?
QS Check automates the search of LuxR and LuxI homologues in bacterial genomes by using two previously trained hidden Markov models (HMM). These matrices were trained with the IPR035304 (AHL synthase) and IPR005143 (LuxR) InterPro databases.
```

#!/bin/bash
#Welcome message
echo "Welcome to QS checker"

# Prompt for the project name
read -p "Write a name for the project: " project_name

# Prompt for the query genome
read -p "Write path to bacterial genome (.faa): " path_to_faa

#file names
LuxR_results=$project_name.LuxR.hmmsearch
LuxI_results=$project_name.LuxI.hmmsearch

# Searching the genome for the receptor
receptor_search=$(hmmsearch LuxR_HMM.hmm  $path_to_faa>$LuxR_results)

receptor_hits=$(grep -c ">" $LuxR_results)



# Searching the genome for the AHL synthase
synthase_search=$(hmmsearch LuxR_HMM.hmm $path_to_faa>$LuxI_results)

synthase_hits=$(grep -c ">" $LuxI_results)

# Report
echo "Query has $receptor_hits LuxR-like receptors"
echo "and $synthase_hits LuxI-like enzymes"


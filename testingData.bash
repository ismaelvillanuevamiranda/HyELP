#!/bin/bash

#pages.input = List of pages for each disease
pagesInput="pages.input"

while IFS= read -r page
do
	#Load the web content into the webContent variable
	webContent=$(wget $page -q -O -)


	#symptoms.input = List of symptoms
	symptomsInput="symptoms.input"
	while IFS= read -r symptom
	do
		#Get the frequency of each symptom
		frequency=$(grep "$symptom" <<< "$webContent" | wc -l)
		frequencyWordYelp=$(awk -v pat="\"$symptom\"" -F "," '$0~pat{print $2 }' word_freq_national_50.txt)

		#printf "%s," $symptom
		if [ $frequency -eq 0 ]; then
		
			binary=0
			frequencyWordYelp=0
		
		else
		
			binary=1
		
		fi
		printf "%d," $frequencyWordYelp
		#echo $frequency

	done < "$symptomsInput"
	echo ""

done < "$pagesInput"



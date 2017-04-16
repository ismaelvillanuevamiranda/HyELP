#!/bin/bash

#states.input = List of states
statesInput="states.input"

while IFS= read -r state
do
	#Load business
	businessInput=$state
	while IFS= read -r business
	do
		#Load the list of states
		#awk -v businessID="$business" -f reviewsByState.awk /Users/ismaelvillanueva/DATOS/UTEP/spring2017/Data\ Mining/yelp_dataset_challenge_round9/yelp_academic_dataset_review.json
		echo "=====================$business - $state===================\n\n\n"
		grep $business /Users/ismaelvillanueva/DATOS/UTEP/spring2017/Data\ Mining/yelp_dataset_challenge_round9/yelp_academic_dataset_review.json >>  reviewByStates/$state

	done < "$businessInput"	

done < "$statesInput"



#!/bin/bash

#states.input = List of states
statesInput="states.input"

while IFS= read -r state
do
	#Load the list of states
	awk -v state="$state" -f clusteringByState.awk yelp_academic_dataset_business.json > $state

done < "$statesInput"



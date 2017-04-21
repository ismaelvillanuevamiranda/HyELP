jq 'del(.user_id, .stars, .useful, .funny, .cool, .type, .review_id)' reviews.json > new.json
jq 'select((.date >= "1998-01-01" and .date <= "1998-12-31") or 
(.date >= "2001-01-01" and .date <= "2006-12-31") or 
(.date >= "2008-01-01" and .date <= "2015-12-31"))' new.json | jq '.business_id +"***"+ .text' > reviews1998_01_011998_12_312001_01_012006_12_312008_01_012015_12_31.txt
jq 'select((.date >= "1998-01-01" and .date <= "2008-12-31") or 
(.date >= "2010-01-01" and .date <= "2014-12-31"))' new.json | jq '.business_id +"***"+ .text' > reviews1998_01_012008_12_312010_01_012014_12_31.txt
jq 'select((.date >= "1998-01-01" and .date <= "2015-12-31"))' new.json | jq '.business_id +"***"+ .text' > reviews1998_01_012015_12_31.txt

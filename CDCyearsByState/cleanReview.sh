jq 'del(.user_id, .stars, .useful, .funny, .cool, .type, .review_id)' reviews.json > new.json
jq 'select((.date >= "2014-01-01" and .date <= "2014-12-01"))' new.json | jq '.business_id +"***"+ .text'

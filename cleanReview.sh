jq 'del(.user_id, .stars, .date, .useful, .funny, .cool, .type, .review_id)' reviews.json > new.json

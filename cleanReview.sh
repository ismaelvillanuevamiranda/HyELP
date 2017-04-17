jq 'del(.user_id, .stars, .useful, .funny, .cool, .type, .review_id)' reviews.json > new.json
